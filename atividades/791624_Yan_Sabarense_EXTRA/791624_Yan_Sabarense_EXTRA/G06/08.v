module fwxyz(output s1, input w, input x, input y, input z);
   assign s1 = (w & x & y & z) | (w & ~x & ~y & ~z) | (w & x & ~y & z) | (w & ~x & y & ~z);
endmodule // fwxyz

module tb_fwxyz;
   reg w, x, y, z;
   wire s1;

   // Instanciar o módulo fwxyz
   fwxyz uut (
      .s1(s1),
      .w(w),
      .x(x),
      .y(y),
      .z(z)
   );

   // Teste de verificação funcional
   initial begin
      $display("Testing fwxyz");

      // Teste 1: w=0, x=0, y=0, z=0
      w = 0; x = 0; y = 0; z = 0;
      #10 $display("w=%b, x=%b, y=%b, z=%b, s1=%b", w, x, y, z, s1);

      // Teste 2: w=1, x=0, y=1, z=0
      w = 1; x = 0; y = 1; z = 0;
      #10 $display("w=%b, x=%b, y=%b, z=%b, s1=%b", w, x, y, z, s1);

      // Teste 3: w=1, x=1, y=1, z=1
      w = 1; x = 1; y = 1; z = 1;
      #10 $display("w=%b, x=%b, y=%b, z=%b, s1=%b", w, x, y, z, s1);

      // Teste 4: w=0, x=1, y=0, z=1
      w = 0; x = 1; y = 0; z = 1;
      #10 $display("w=%b, x=%b, y=%b, z=%b, s1=%b", w, x, y, z, s1);

      $stop;
   end
endmodule // tb_fwxyz
