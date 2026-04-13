\m5_TLV_version 1d: tl-x.org
\m5

\SV
   m5_makerchip_module   // (Expanded in Nav-TLV pane.)
\TLV
   $reset = *reset;
   |comb
      @1
         $valid = $reset ? 1'b0 : (1'b1 + >>1$valid);
         $rand2[3:0] = *cyc_cnt[4:1];
         $op[1:0]    = *cyc_cnt[2:1];
   
         $val1[31:0] = >>2$out[31:0];
         $val2[31:0] = $rand2[3:0];
         $valid_or_reset = $valid || $reset;
      
      ?$valid_or_reset
         @1
            $sum[31:0] = $val1[31:0] + $val2[31:0];
            $diff[31:0] = $val1[31:0] - $val2[31:0];
            $prod[31:0] = $val1[31:0] * $val2[31:0];
            $quot[31:0] = $val1[31:0] / $val2[31:0];
            
      
         @2
            $out[31:0] = ($op[1:0] == 2'b00) ? $sum[31:0] :
                         ($op[1:0] == 2'b01) ? $diff[31:0] :
                         ($op[1:0] == 2'b10) ? $prod[31:0] :
                                               $quot[31:0];
   `BOGUS_USE($out $reset);

   *passed = *cyc_cnt > 40;
   *failed = 1'b0;
\SV
   endmodule