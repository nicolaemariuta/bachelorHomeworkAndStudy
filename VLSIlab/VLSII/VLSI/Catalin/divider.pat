 
        in       op_a(3 DOWNTO 0);;;  
        in       op_b(3 DOWNTO 0);;;  
        in      clk;;;  
        in   reset;;;  
        in   start;;;  
        in     vdd;  
        in     vss;;;   
        in     vdde;  
        in     vsse;;;   
        out   ready;;;   
        out   result(7 DOWNTO 0);;  
        
       BEGIN 
       -- Pattern description :  
       --         a    b    c   r   s   vv   vv   r        p 
       --                   k   e   t   ds   ds   e        r 
       --                       s   a   ds   ds   a        o 
       --                       e   r        ee   d        d 
       --                       t   t             y  
  					          
  					          
       pat_0   : 0111 1101  1   1   0   10   10   ?*    ?******** ;  
       pat_1   : 0111 1101  0   1   0   10   10   ?*    ?******** ; 
       pat_2   : 0111 1101  1   1   0   10   10   ?*    ?******** ; 
       pat_3   : 0111 1101  0   1   0   10   10   ?*    ?******** ; 
       pat_4   : 0111 1101  1   0   1   10   10   ?*    ?******** ; 
       pat_5   : 0111 1101  0   0   1   10   10   ?*    ?******** ; 
       pat_6   : 0111 1101  1   0   0   10   10   ?*    ?******** ; 
       pat_7   : 0111 1101  0   0   0   10   10   ?*    ?******** ; 
       pat_8   : 0111 1101  1   0   0   10   10   ?*    ?******** ; 
       pat_9   : 0111 1101  0   0   0   10   10   ?*    ?******** ; 
       pat_10  : 0111 1101  1   0   0   10   10   ?*    ?******** ; 
       pat_11  : 0111 1101  0   0   0   10   10   ?*    ?******** ; 
       pat_13  : 0111 1101  1   0   0   10   10   ?*    ?******** ; 
       pat_14  : 0111 1101  0   0   0   10   10   ?*    ?******** ;    
       pat_15  : 0111 1101  1   0   0   10   10   ?*    ?******** ; 
       pat_16  : 0111 1101  0   0   0   10   10   ?*    ?******** ; 
       pat_17  : 0111 1101  1   0   0   10   10   ?*    ?******** ;    
       pat_18  : 0111 1101  0   0   0   10   10   ?*    ?******** ;    
       pat_19  : 0111 1101  1   0   0   10   10   ?*    ?******** ;    
       pat_20  : 0111 1101  0   0   0   10   10   ?*    ?******** ;    
       pat_21  : 0111 1101  1   0   0   10   10   ?*    ?******** ;    
       pat_22  : 0111 1101  0   0   0   10   10   ?*    ?******** ;    
       pat_23  : 0111 1101  1   0   0   10   10   ?*    ?******** ;    
       pat_24  : 0111 1101  0   0   0   10   10   ?*    ?******** ;    
       pat_25  : 0111 1101  1   0   0   10   10   ?*    ?******** ; 
       pat_26  : 0111 1101  0   0   0   10   10   ?*    ?******** ;    
       pat_27  : 0111 1101  1   0   0   10   10   ?*    ?******** ; 
       pat_28  : 0111 1101  0   0   0   10   10   ?*    ?******** ; 
       pat_29  : 0111 1101  1   0   0   10   10   ?*    ?******** ;    
       pat_30  : 0111 1101  0   0   0   10   10   ?*    ?******** ;    
       pat_31  : 0111 1101  1   0   0   10   10   ?*    ?******** ;    
       pat_32  : 0111 1101  0   0   0   10   10   ?*    ?******** ;    
       pat_33  : 0111 1101  1   0   0   10   10   ?*    ?******** ;    
       pat_34  : 0111 1101  0   0   0   10   10   ?*    ?******** ;    
       pat_35  : 0111 1101  1   0   0   10   10   ?*    ?******** ;    
       pat_36  : 0111 1101  0   0   0   10   10   ?*    ?******** ;    
 
       end;  
