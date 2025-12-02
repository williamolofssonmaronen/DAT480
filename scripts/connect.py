import pynq
import numpy as np
from _thread import *
import threading
import socket
from vnx_utils import *

for i in range(len(pynq.Device.devices)):
    print(i, pynq.Device.devices[i].name)

currentDevice = pynq.Device.devices[0]
xclbin = '/home/shared/vnx_basic_if0.xclbin'
ol = pynq.Overlay(xclbin,device=currentDevice)

ol.ip_dict

print(ol.cmac_0.link_status())

alveo_ipaddr = '192.168.100.2'
print(ol.networklayer_0.set_ip_address(alveo_ipaddr, debug=True))

sw_ip = '192.168.100.1'
ol.networklayer_0.sockets[0] = (sw_ip, 50446, 60133, True)
ol.networklayer_0.sockets[1] = (sw_ip, 38746, 62781, True)
ol.networklayer_0.populate_socket_table(debug=True)


SW_PORT = ol.networklayer_0.sockets[1]['theirPort']
sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
sock.bind(('', SW_PORT))


mm2s = ol.krnl_mm2s_0
s2mm = ol.krnl_s2mm_0

size = 1408 * 100
shape = (size,1)


if hasattr(ol, 'HBM0'):
    mm2s_buf = pynq.allocate(shape, dtype=np.uint8, target=ol.HBM0)
    s2mm_buf = pynq.allocate(shape, dtype=np.uint8, target=ol.HBM0)
else:
    mm2s_buf = pynq.allocate(shape, dtype=np.uint8, target=ol.bank1)
    s2mm_buf = pynq.allocate(shape, dtype=np.uint8, target=ol.bank1)


s2mm_wh = s2mm.start(s2mm_buf,size)

udp_message_global = np.random.randint(low=0, high=((2**8)-1), size=shape, dtype=np.uint8)
BYTES_PER_PACKET = 1408
num_pkts = size//BYTES_PER_PACKET
alveo_port = ol.networklayer_0.sockets[1]['myPort']
for m in range(num_pkts):
    udp_message_local = udp_message_global[(m * BYTES_PER_PACKET) :
                        ((m * BYTES_PER_PACKET) + BYTES_PER_PACKET)]
    sock.sendto(udp_message_local, (alveo_ipaddr, alveo_port))


s2mm_wh.wait()
s2mm_buf.sync_from_device()


msg = "SUCCESS!" if np.array_equal(udp_message_global, s2mm_buf) else "FAILURE!"
print("Host sending data through the network and the host getting data from kernel, was a: {}. Total data transmitted {} bytes to {}" .format(msg,size,(alveo_ipaddr, alveo_port)))

print_lock = threading.Lock()
done = threading.Event()

def socket_receive_threaded(sock, size):
    BYTES_PER_PACKET = 1*1408
    shape_global = (size,1)
    shape_local = (BYTES_PER_PACKET,1)
    recv_data_global = np.empty(shape_global, dtype = np.uint8)
    data_partial = np.empty(shape_local, dtype = np.uint8)
    num_it = (size // BYTES_PER_PACKET)
    global mm2s_buf
    sum_bytes = 0
    connection = 'None'
    for m in range(num_it):
        res = sock.recvfrom_into(data_partial)
        recv_data_global[(m * BYTES_PER_PACKET) : ((m * BYTES_PER_PACKET)
                        + BYTES_PER_PACKET)] = data_partial
        sum_bytes = sum_bytes + int(res[0])
        connection = res[1]
    msg = "SUCCESS!" if np.array_equal(mm2s_buf, recv_data_global) else "FAILURE!"
    print ("Kernel sending data to the network and the host getting data from network was a: {}. Total data received {} bytes from {}" .format(msg,sum_bytes,connection))
    print_lock.release()
    done.set()


mm2s_buf[:] = np.random.randint(low=0, high=((2**8)-1), size=shape, dtype=np.uint8)
mm2s_buf.sync_to_device()
print_lock.acquire()
start_new_thread(socket_receive_threaded, (sock,size,))
mm2s_wh = mm2s.start(mm2s_buf,size, 1)
done.wait()
done.clear()

del mm2s_buf
del s2mm_buf
del udp_message_global
pynq.Overlay.free(ol)

print("done")
