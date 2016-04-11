
-- description generated by Pat driver

--			date     : Mon Jan 14 14:26:07 2013
--			revision : v109

--			sequence : divider

-- input / output list :
in       op_a (3 downto 0) B;;;
in       op_b (3 downto 0) B;;;
in       clk B;;;
in       reset B;;;
in       start B;;;
in       vdd B;
in       vss B;;;
out      ready B;;;
out      result (7 downto 0) B;;

begin

-- Pattern description :

--                                 o     o     c  r  s  vv   r   r         
--                                 p     p     l  e  t  ds   e   e         
--                                 _     _     k  s  a  ds   a   s         
--                                 a     b        e  r       d   u         
--                                                t  t       y   l         
--                                                               t         

pat_1                            : 1100  0111  1  0  0  10  ?u  ?uuuuuuuu ;
pat_3                            : 1100  0111  0  0  0  10  ?u  ?uuuuuuuu ;
pat_4                            : 1100  0111  1  0  0  10  ?0  ?00000000 ;
pat_5                            : 1100  0111  0  0  0  10  ?0  ?00000000 ;
pat_6                            : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_7                            : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_8                            : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_9                            : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_10                           : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_11                           : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_12                           : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_13                           : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_14                           : 1100  0111  1  1  1  10  ?0  ?00000000 ;
pat_15                           : 1100  0111  0  1  1  10  ?0  ?00000000 ;
pat_16                           : 1100  0111  1  1  1  10  ?0  ?00000000 ;
pat_17                           : 1100  0111  0  1  1  10  ?0  ?00000000 ;
pat_18                           : 1100  0111  1  1  1  10  ?0  ?00000000 ;
pat_19                           : 1100  0111  0  1  1  10  ?0  ?00000000 ;
pat_20                           : 1100  0111  1  1  1  10  ?0  ?00000000 ;
pat_21                           : 1100  0111  0  1  1  10  ?0  ?00000000 ;
pat_22                           : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_23                           : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_24                           : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_25                           : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_26                           : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_27                           : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_28                           : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_29                           : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_30                           : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_31                           : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_32                           : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_33                           : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_34                           : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_35                           : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_36                           : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_37                           : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_38                           : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_39                           : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_40                           : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_41                           : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_42                           : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_43                           : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_44                           : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_45                           : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_46                           : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_47                           : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_48                           : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_49                           : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_50                           : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_51                           : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_52                           : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_53                           : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_54                           : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_55                           : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_56                           : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_57                           : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_58                           : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_59                           : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_60                           : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_61                           : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_62                           : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_63                           : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_64                           : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_65                           : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_66                           : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_67                           : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_68                           : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_69                           : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_70                           : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_71                           : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_72                           : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_73                           : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_74                           : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_75                           : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_76                           : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_77                           : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_78                           : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_79                           : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_80                           : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_81                           : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_82                           : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_83                           : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_84                           : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_85                           : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_86                           : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_87                           : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_88                           : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_89                           : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_90                           : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_91                           : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_92                           : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_93                           : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_94                           : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_95                           : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_96                           : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_97                           : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_98                           : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_99                           : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_100                          : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_101                          : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_102                          : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_103                          : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_104                          : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_105                          : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_106                          : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_107                          : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_108                          : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_109                          : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_110                          : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_111                          : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_112                          : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_113                          : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_114                          : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_115                          : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_116                          : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_117                          : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_118                          : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_119                          : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_120                          : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_121                          : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_122                          : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_123                          : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_124                          : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_125                          : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_126                          : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_127                          : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_128                          : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_129                          : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_130                          : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_131                          : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_132                          : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_133                          : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_134                          : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_135                          : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_136                          : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_137                          : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_138                          : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_139                          : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_140                          : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_141                          : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_142                          : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_143                          : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_144                          : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_145                          : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_146                          : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_147                          : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_148                          : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_149                          : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_150                          : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_151                          : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_152                          : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_153                          : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_154                          : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_155                          : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_156                          : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_157                          : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_158                          : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_159                          : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_160                          : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_161                          : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_162                          : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_163                          : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_164                          : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_165                          : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_166                          : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_167                          : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_168                          : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_169                          : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_170                          : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_171                          : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_172                          : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_173                          : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_174                          : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_175                          : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_176                          : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_177                          : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_178                          : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_179                          : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_180                          : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_181                          : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_182                          : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_183                          : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_184                          : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_185                          : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_186                          : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_187                          : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_188                          : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_189                          : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_190                          : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_191                          : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_192                          : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_193                          : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_194                          : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_195                          : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_196                          : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_197                          : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_198                          : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_199                          : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_200                          : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_201                          : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_202                          : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_203                          : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_204                          : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_205                          : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_206                          : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_207                          : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_208                          : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_209                          : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_210                          : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_211                          : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_212                          : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_213                          : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_214                          : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_215                          : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_216                          : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_217                          : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_218                          : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_219                          : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_220                          : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_221                          : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_222                          : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_223                          : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_224                          : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_225                          : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_226                          : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_227                          : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_228                          : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_229                          : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_230                          : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_231                          : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_232                          : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_233                          : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_234                          : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_235                          : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_236                          : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_237                          : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_238                          : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_239                          : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_240                          : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_241                          : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_242                          : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_243                          : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_244                          : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_245                          : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_246                          : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_247                          : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_248                          : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_249                          : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_250                          : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_251                          : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_252                          : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_253                          : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_254                          : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_255                          : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_256                          : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_257                          : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_258                          : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_259                          : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_260                          : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_261                          : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_262                          : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_263                          : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_264                          : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_265                          : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_266                          : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_267                          : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_268                          : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_269                          : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_270                          : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_271                          : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_272                          : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_273                          : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_274                          : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_275                          : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_276                          : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_277                          : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_278                          : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_279                          : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_280                          : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_281                          : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_282                          : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_283                          : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_284                          : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_285                          : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_286                          : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_287                          : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_288                          : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_289                          : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_290                          : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_291                          : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_292                          : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_293                          : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_294                          : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_295                          : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_296                          : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_297                          : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_298                          : 1100  0111  1  1  0  10  ?0  ?00000000 ;
pat_299                          : 1100  0111  0  1  0  10  ?0  ?00000000 ;
pat_300                          : 1100  0111  1  1  0  10  ?0  ?00000000 ;

end;
