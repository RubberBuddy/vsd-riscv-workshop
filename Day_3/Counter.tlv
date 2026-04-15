\m5_TLV_version 1d: tl-x.org
\m5

\SV
   m5_makerchip_module   // (Expanded in Nav-TLV pane.)
\TLV
   $reset = *reset;
   
   $sum[31:0] = 1 + >>1$cnt[31:0];
   $cnt[31:0] = $reset ? 0 : $sum[31:0];
   `BOGUS_USE($cnt);
   
   *passed = *cyc_cnt > 40;
   *failed = 1'b0;
\SV
   endmodule
