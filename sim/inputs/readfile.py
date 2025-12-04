with open('patterns_bits.txt', 'r') as file:
        array_in = [line.strip() for line in file]
n = 0
array_out = []
for n in range(len(array_in)):
        a =  array_in[n]
        array_out.extend([ch for ch in a])
print(array_out)
