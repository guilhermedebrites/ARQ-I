module Guia_0706(output wire equal, input wire [1:0] a, b, select);

   wire [1:0] xor_result, xnor_result;

   // Implementação do comparador usando XOR e XNOR
   assign xor_result = a ^ b;
   assign xnor_result = ~(a ^ b);

   // Selecionar igualdade ou desigualdade
   assign equal = (select == 0) ? (&xor_result) : (&xnor_result);

   // Teste de verificação funcional
   initial begin
      $display("Testing Guia_0706");

      // Teste 1: a = 2'b00, b = 2'b00, select = 0 (igual)
      a = 2'b00; b = 2'b00; select = 0;
      #10 $display("a=%b, b=%b, equal=%b", a, b, equal);

      // Teste 2: a = 2'b01, b = 2'b01, select = 1 (diferente)
      a = 2'b01; b = 2'b01; select = 1;
      #10 $display("a=%b, b=%b, equal=%b", a, b, equal);

      // Teste 3: a = 2'b10, b = 2'b01, select = 0 (igual)
      a = 2'b10; b = 2'b01; select = 0;
      #10 $display("a=%b, b=%b, equal=%b", a, b, equal);

      // Teste 4: a = 2'b11, b = 2'b10, select = 1 (diferente)
      a = 2'b11; b = 2'b10; select = 1;
      #10 $display("a=%b, b=%b, equal=%b", a, b, equal);

      $stop;
   end
endmodule // Guia_0706
