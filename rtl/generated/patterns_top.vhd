library ieee;
use ieee.std_logic_1164.all;

entity patterns_top is
  port(
    clk      : in std_logic;
    rst      : in std_logic;
    new_byte : in std_logic_vector(7 downto 0);
    match_out : out std_logic_vector(255 downto 0)
  );
end entity;

architecture rtl of patterns_top is
  signal matches : std_logic_vector(255 downto 0);
begin

  pm_0 : entity work.pattern_matcher_0
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(0)
    );

  pm_1 : entity work.pattern_matcher_1
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(1)
    );

  pm_2 : entity work.pattern_matcher_2
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(2)
    );

  pm_3 : entity work.pattern_matcher_3
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(3)
    );

  pm_4 : entity work.pattern_matcher_4
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(4)
    );

  pm_5 : entity work.pattern_matcher_5
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(5)
    );

  pm_6 : entity work.pattern_matcher_6
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(6)
    );

  pm_7 : entity work.pattern_matcher_7
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(7)
    );

  pm_8 : entity work.pattern_matcher_8
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(8)
    );

  pm_9 : entity work.pattern_matcher_9
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(9)
    );

  pm_10 : entity work.pattern_matcher_10
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(10)
    );

  pm_11 : entity work.pattern_matcher_11
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(11)
    );

  pm_12 : entity work.pattern_matcher_12
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(12)
    );

  pm_13 : entity work.pattern_matcher_13
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(13)
    );

  pm_14 : entity work.pattern_matcher_14
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(14)
    );

  pm_15 : entity work.pattern_matcher_15
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(15)
    );

  pm_16 : entity work.pattern_matcher_16
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(16)
    );

  pm_17 : entity work.pattern_matcher_17
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(17)
    );

  pm_18 : entity work.pattern_matcher_18
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(18)
    );

  pm_19 : entity work.pattern_matcher_19
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(19)
    );

  pm_20 : entity work.pattern_matcher_20
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(20)
    );

  pm_21 : entity work.pattern_matcher_21
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(21)
    );

  pm_22 : entity work.pattern_matcher_22
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(22)
    );

  pm_23 : entity work.pattern_matcher_23
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(23)
    );

  pm_24 : entity work.pattern_matcher_24
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(24)
    );

  pm_25 : entity work.pattern_matcher_25
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(25)
    );

  pm_26 : entity work.pattern_matcher_26
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(26)
    );

  pm_27 : entity work.pattern_matcher_27
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(27)
    );

  pm_28 : entity work.pattern_matcher_28
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(28)
    );

  pm_29 : entity work.pattern_matcher_29
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(29)
    );

  pm_30 : entity work.pattern_matcher_30
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(30)
    );

  pm_31 : entity work.pattern_matcher_31
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(31)
    );

  pm_32 : entity work.pattern_matcher_32
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(32)
    );

  pm_33 : entity work.pattern_matcher_33
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(33)
    );

  pm_34 : entity work.pattern_matcher_34
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(34)
    );

  pm_35 : entity work.pattern_matcher_35
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(35)
    );

  pm_36 : entity work.pattern_matcher_36
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(36)
    );

  pm_37 : entity work.pattern_matcher_37
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(37)
    );

  pm_38 : entity work.pattern_matcher_38
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(38)
    );

  pm_39 : entity work.pattern_matcher_39
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(39)
    );

  pm_40 : entity work.pattern_matcher_40
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(40)
    );

  pm_41 : entity work.pattern_matcher_41
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(41)
    );

  pm_42 : entity work.pattern_matcher_42
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(42)
    );

  pm_43 : entity work.pattern_matcher_43
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(43)
    );

  pm_44 : entity work.pattern_matcher_44
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(44)
    );

  pm_45 : entity work.pattern_matcher_45
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(45)
    );

  pm_46 : entity work.pattern_matcher_46
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(46)
    );

  pm_47 : entity work.pattern_matcher_47
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(47)
    );

  pm_48 : entity work.pattern_matcher_48
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(48)
    );

  pm_49 : entity work.pattern_matcher_49
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(49)
    );

  pm_50 : entity work.pattern_matcher_50
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(50)
    );

  pm_51 : entity work.pattern_matcher_51
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(51)
    );

  pm_52 : entity work.pattern_matcher_52
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(52)
    );

  pm_53 : entity work.pattern_matcher_53
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(53)
    );

  pm_54 : entity work.pattern_matcher_54
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(54)
    );

  pm_55 : entity work.pattern_matcher_55
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(55)
    );

  pm_56 : entity work.pattern_matcher_56
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(56)
    );

  pm_57 : entity work.pattern_matcher_57
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(57)
    );

  pm_58 : entity work.pattern_matcher_58
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(58)
    );

  pm_59 : entity work.pattern_matcher_59
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(59)
    );

  pm_60 : entity work.pattern_matcher_60
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(60)
    );

  pm_61 : entity work.pattern_matcher_61
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(61)
    );

  pm_62 : entity work.pattern_matcher_62
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(62)
    );

  pm_63 : entity work.pattern_matcher_63
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(63)
    );

  pm_64 : entity work.pattern_matcher_64
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(64)
    );

  pm_65 : entity work.pattern_matcher_65
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(65)
    );

  pm_66 : entity work.pattern_matcher_66
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(66)
    );

  pm_67 : entity work.pattern_matcher_67
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(67)
    );

  pm_68 : entity work.pattern_matcher_68
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(68)
    );

  pm_69 : entity work.pattern_matcher_69
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(69)
    );

  pm_70 : entity work.pattern_matcher_70
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(70)
    );

  pm_71 : entity work.pattern_matcher_71
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(71)
    );

  pm_72 : entity work.pattern_matcher_72
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(72)
    );

  pm_73 : entity work.pattern_matcher_73
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(73)
    );

  pm_74 : entity work.pattern_matcher_74
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(74)
    );

  pm_75 : entity work.pattern_matcher_75
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(75)
    );

  pm_76 : entity work.pattern_matcher_76
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(76)
    );

  pm_77 : entity work.pattern_matcher_77
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(77)
    );

  pm_78 : entity work.pattern_matcher_78
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(78)
    );

  pm_79 : entity work.pattern_matcher_79
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(79)
    );

  pm_80 : entity work.pattern_matcher_80
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(80)
    );

  pm_81 : entity work.pattern_matcher_81
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(81)
    );

  pm_82 : entity work.pattern_matcher_82
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(82)
    );

  pm_83 : entity work.pattern_matcher_83
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(83)
    );

  pm_84 : entity work.pattern_matcher_84
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(84)
    );

  pm_85 : entity work.pattern_matcher_85
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(85)
    );

  pm_86 : entity work.pattern_matcher_86
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(86)
    );

  pm_87 : entity work.pattern_matcher_87
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(87)
    );

  pm_88 : entity work.pattern_matcher_88
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(88)
    );

  pm_89 : entity work.pattern_matcher_89
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(89)
    );

  pm_90 : entity work.pattern_matcher_90
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(90)
    );

  pm_91 : entity work.pattern_matcher_91
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(91)
    );

  pm_92 : entity work.pattern_matcher_92
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(92)
    );

  pm_93 : entity work.pattern_matcher_93
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(93)
    );

  pm_94 : entity work.pattern_matcher_94
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(94)
    );

  pm_95 : entity work.pattern_matcher_95
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(95)
    );

  pm_96 : entity work.pattern_matcher_96
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(96)
    );

  pm_97 : entity work.pattern_matcher_97
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(97)
    );

  pm_98 : entity work.pattern_matcher_98
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(98)
    );

  pm_99 : entity work.pattern_matcher_99
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(99)
    );

  pm_100 : entity work.pattern_matcher_100
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(100)
    );

  pm_101 : entity work.pattern_matcher_101
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(101)
    );

  pm_102 : entity work.pattern_matcher_102
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(102)
    );

  pm_103 : entity work.pattern_matcher_103
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(103)
    );

  pm_104 : entity work.pattern_matcher_104
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(104)
    );

  pm_105 : entity work.pattern_matcher_105
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(105)
    );

  pm_106 : entity work.pattern_matcher_106
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(106)
    );

  pm_107 : entity work.pattern_matcher_107
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(107)
    );

  pm_108 : entity work.pattern_matcher_108
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(108)
    );

  pm_109 : entity work.pattern_matcher_109
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(109)
    );

  pm_110 : entity work.pattern_matcher_110
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(110)
    );

  pm_111 : entity work.pattern_matcher_111
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(111)
    );

  pm_112 : entity work.pattern_matcher_112
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(112)
    );

  pm_113 : entity work.pattern_matcher_113
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(113)
    );

  pm_114 : entity work.pattern_matcher_114
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(114)
    );

  pm_115 : entity work.pattern_matcher_115
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(115)
    );

  pm_116 : entity work.pattern_matcher_116
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(116)
    );

  pm_117 : entity work.pattern_matcher_117
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(117)
    );

  pm_118 : entity work.pattern_matcher_118
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(118)
    );

  pm_119 : entity work.pattern_matcher_119
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(119)
    );

  pm_120 : entity work.pattern_matcher_120
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(120)
    );

  pm_121 : entity work.pattern_matcher_121
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(121)
    );

  pm_122 : entity work.pattern_matcher_122
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(122)
    );

  pm_123 : entity work.pattern_matcher_123
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(123)
    );

  pm_124 : entity work.pattern_matcher_124
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(124)
    );

  pm_125 : entity work.pattern_matcher_125
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(125)
    );

  pm_126 : entity work.pattern_matcher_126
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(126)
    );

  pm_127 : entity work.pattern_matcher_127
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(127)
    );

  pm_128 : entity work.pattern_matcher_128
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(128)
    );

  pm_129 : entity work.pattern_matcher_129
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(129)
    );

  pm_130 : entity work.pattern_matcher_130
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(130)
    );

  pm_131 : entity work.pattern_matcher_131
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(131)
    );

  pm_132 : entity work.pattern_matcher_132
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(132)
    );

  pm_133 : entity work.pattern_matcher_133
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(133)
    );

  pm_134 : entity work.pattern_matcher_134
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(134)
    );

  pm_135 : entity work.pattern_matcher_135
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(135)
    );

  pm_136 : entity work.pattern_matcher_136
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(136)
    );

  pm_137 : entity work.pattern_matcher_137
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(137)
    );

  pm_138 : entity work.pattern_matcher_138
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(138)
    );

  pm_139 : entity work.pattern_matcher_139
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(139)
    );

  pm_140 : entity work.pattern_matcher_140
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(140)
    );

  pm_141 : entity work.pattern_matcher_141
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(141)
    );

  pm_142 : entity work.pattern_matcher_142
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(142)
    );

  pm_143 : entity work.pattern_matcher_143
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(143)
    );

  pm_144 : entity work.pattern_matcher_144
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(144)
    );

  pm_145 : entity work.pattern_matcher_145
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(145)
    );

  pm_146 : entity work.pattern_matcher_146
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(146)
    );

  pm_147 : entity work.pattern_matcher_147
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(147)
    );

  pm_148 : entity work.pattern_matcher_148
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(148)
    );

  pm_149 : entity work.pattern_matcher_149
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(149)
    );

  pm_150 : entity work.pattern_matcher_150
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(150)
    );

  pm_151 : entity work.pattern_matcher_151
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(151)
    );

  pm_152 : entity work.pattern_matcher_152
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(152)
    );

  pm_153 : entity work.pattern_matcher_153
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(153)
    );

  pm_154 : entity work.pattern_matcher_154
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(154)
    );

  pm_155 : entity work.pattern_matcher_155
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(155)
    );

  pm_156 : entity work.pattern_matcher_156
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(156)
    );

  pm_157 : entity work.pattern_matcher_157
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(157)
    );

  pm_158 : entity work.pattern_matcher_158
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(158)
    );

  pm_159 : entity work.pattern_matcher_159
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(159)
    );

  pm_160 : entity work.pattern_matcher_160
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(160)
    );

  pm_161 : entity work.pattern_matcher_161
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(161)
    );

  pm_162 : entity work.pattern_matcher_162
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(162)
    );

  pm_163 : entity work.pattern_matcher_163
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(163)
    );

  pm_164 : entity work.pattern_matcher_164
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(164)
    );

  pm_165 : entity work.pattern_matcher_165
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(165)
    );

  pm_166 : entity work.pattern_matcher_166
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(166)
    );

  pm_167 : entity work.pattern_matcher_167
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(167)
    );

  pm_168 : entity work.pattern_matcher_168
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(168)
    );

  pm_169 : entity work.pattern_matcher_169
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(169)
    );

  pm_170 : entity work.pattern_matcher_170
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(170)
    );

  pm_171 : entity work.pattern_matcher_171
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(171)
    );

  pm_172 : entity work.pattern_matcher_172
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(172)
    );

  pm_173 : entity work.pattern_matcher_173
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(173)
    );

  pm_174 : entity work.pattern_matcher_174
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(174)
    );

  pm_175 : entity work.pattern_matcher_175
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(175)
    );

  pm_176 : entity work.pattern_matcher_176
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(176)
    );

  pm_177 : entity work.pattern_matcher_177
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(177)
    );

  pm_178 : entity work.pattern_matcher_178
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(178)
    );

  pm_179 : entity work.pattern_matcher_179
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(179)
    );

  pm_180 : entity work.pattern_matcher_180
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(180)
    );

  pm_181 : entity work.pattern_matcher_181
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(181)
    );

  pm_182 : entity work.pattern_matcher_182
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(182)
    );

  pm_183 : entity work.pattern_matcher_183
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(183)
    );

  pm_184 : entity work.pattern_matcher_184
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(184)
    );

  pm_185 : entity work.pattern_matcher_185
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(185)
    );

  pm_186 : entity work.pattern_matcher_186
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(186)
    );

  pm_187 : entity work.pattern_matcher_187
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(187)
    );

  pm_188 : entity work.pattern_matcher_188
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(188)
    );

  pm_189 : entity work.pattern_matcher_189
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(189)
    );

  pm_190 : entity work.pattern_matcher_190
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(190)
    );

  pm_191 : entity work.pattern_matcher_191
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(191)
    );

  pm_192 : entity work.pattern_matcher_192
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(192)
    );

  pm_193 : entity work.pattern_matcher_193
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(193)
    );

  pm_194 : entity work.pattern_matcher_194
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(194)
    );

  pm_195 : entity work.pattern_matcher_195
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(195)
    );

  pm_196 : entity work.pattern_matcher_196
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(196)
    );

  pm_197 : entity work.pattern_matcher_197
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(197)
    );

  pm_198 : entity work.pattern_matcher_198
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(198)
    );

  pm_199 : entity work.pattern_matcher_199
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(199)
    );

  pm_200 : entity work.pattern_matcher_200
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(200)
    );

  pm_201 : entity work.pattern_matcher_201
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(201)
    );

  pm_202 : entity work.pattern_matcher_202
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(202)
    );

  pm_203 : entity work.pattern_matcher_203
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(203)
    );

  pm_204 : entity work.pattern_matcher_204
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(204)
    );

  pm_205 : entity work.pattern_matcher_205
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(205)
    );

  pm_206 : entity work.pattern_matcher_206
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(206)
    );

  pm_207 : entity work.pattern_matcher_207
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(207)
    );

  pm_208 : entity work.pattern_matcher_208
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(208)
    );

  pm_209 : entity work.pattern_matcher_209
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(209)
    );

  pm_210 : entity work.pattern_matcher_210
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(210)
    );

  pm_211 : entity work.pattern_matcher_211
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(211)
    );

  pm_212 : entity work.pattern_matcher_212
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(212)
    );

  pm_213 : entity work.pattern_matcher_213
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(213)
    );

  pm_214 : entity work.pattern_matcher_214
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(214)
    );

  pm_215 : entity work.pattern_matcher_215
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(215)
    );

  pm_216 : entity work.pattern_matcher_216
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(216)
    );

  pm_217 : entity work.pattern_matcher_217
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(217)
    );

  pm_218 : entity work.pattern_matcher_218
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(218)
    );

  pm_219 : entity work.pattern_matcher_219
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(219)
    );

  pm_220 : entity work.pattern_matcher_220
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(220)
    );

  pm_221 : entity work.pattern_matcher_221
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(221)
    );

  pm_222 : entity work.pattern_matcher_222
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(222)
    );

  pm_223 : entity work.pattern_matcher_223
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(223)
    );

  pm_224 : entity work.pattern_matcher_224
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(224)
    );

  pm_225 : entity work.pattern_matcher_225
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(225)
    );

  pm_226 : entity work.pattern_matcher_226
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(226)
    );

  pm_227 : entity work.pattern_matcher_227
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(227)
    );

  pm_228 : entity work.pattern_matcher_228
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(228)
    );

  pm_229 : entity work.pattern_matcher_229
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(229)
    );

  pm_230 : entity work.pattern_matcher_230
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(230)
    );

  pm_231 : entity work.pattern_matcher_231
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(231)
    );

  pm_232 : entity work.pattern_matcher_232
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(232)
    );

  pm_233 : entity work.pattern_matcher_233
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(233)
    );

  pm_234 : entity work.pattern_matcher_234
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(234)
    );

  pm_235 : entity work.pattern_matcher_235
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(235)
    );

  pm_236 : entity work.pattern_matcher_236
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(236)
    );

  pm_237 : entity work.pattern_matcher_237
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(237)
    );

  pm_238 : entity work.pattern_matcher_238
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(238)
    );

  pm_239 : entity work.pattern_matcher_239
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(239)
    );

  pm_240 : entity work.pattern_matcher_240
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(240)
    );

  pm_241 : entity work.pattern_matcher_241
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(241)
    );

  pm_242 : entity work.pattern_matcher_242
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(242)
    );

  pm_243 : entity work.pattern_matcher_243
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(243)
    );

  pm_244 : entity work.pattern_matcher_244
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(244)
    );

  pm_245 : entity work.pattern_matcher_245
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(245)
    );

  pm_246 : entity work.pattern_matcher_246
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(246)
    );

  pm_247 : entity work.pattern_matcher_247
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(247)
    );

  pm_248 : entity work.pattern_matcher_248
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(248)
    );

  pm_249 : entity work.pattern_matcher_249
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(249)
    );

  pm_250 : entity work.pattern_matcher_250
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(250)
    );

  pm_251 : entity work.pattern_matcher_251
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(251)
    );

  pm_252 : entity work.pattern_matcher_252
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(252)
    );

  pm_253 : entity work.pattern_matcher_253
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(253)
    );

  pm_254 : entity work.pattern_matcher_254
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(254)
    );

  pm_255 : entity work.pattern_matcher_255
    port map(
      clk      => clk,
      rst      => rst,
      new_byte => new_byte,
      match    => matches(255)
    );

  match_out <= matches;

end architecture;
