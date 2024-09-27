module FXYZ(output S1, input X, input Y, input Z);
   assign S1 = (X | ~Y | ~Z) & (~X | Y | ~Z) & (~X | Y | Z);
endmodule // FXYZ

module tb_FXYZ;
   reg X, Y, Z;
   wire S1;

   // Instanciar o módulo FXYZ
   FXYZ uut (
      .S1(S1),
      .X(X),
      .Y(Y),
      .Z(Z)
   );

   // Teste de verificação funcional
   initial begin
      $display("Testing FXYZ");

      // Teste 1: X=0, Y=0, Z=0
      X = 0; Y = 0; Z = 0;
      #10 $display("X=%b, Y=%b, Z=%b, S1=%b", X, Y, Z, S1);

      // Teste 2: X=1, Y=0, Z=1
      X = 1; Y = 0; Z = 1;
      #10 $display("X=%b, Y=%b, Z=%b, S1=%b", X, Y, Z, S1);

      // Teste 3: X=1, Y=1, Z=0
      X = 1; Y = 1; Z = 0;
      #10 $display("X=%b, Y=%b, Z=%b, S1=%b", X, Y, Z, S1);

      // Teste 4: X=0, Y=1, Z=1
      X = 0; Y = 1; Z = 1;
      #10 $display("X=%b, Y=%b, Z=%b, S1=%b", X, Y, Z, S1);

      $stop;
   end
endmodule // tb_FXYZ
