module Guia_0707(output wire greater, input wire [1:0] a, b, select);

   wire [1:0] and_result;

   // Implementação do comparador usando AND
   assign and_result = (select == 0) ? (a < b) : (a > b);

   // Selecionar magnitude (maior ou menor)
   assign greater = and_result;

   // Teste de verificação funcional
   initial begin
      $display("Testing Guia_0707");

      // Teste 1: a = 2'b00, b = 2'b00, select = 0 (menor)
      a = 2'b00; b = 2'b00; select = 0;
      #10 $display("a=%b, b=%b, greater=%b", a, b, greater);

      // Teste 2: a = 2'b01, b = 2'b01, select = 1 (igual)
      a = 2'b01; b = 2'b01; select = 1;
      #10 $display("a=%b, b=%b, greater=%b", a, b, greater);

      // Teste 3: a = 2'b10, b = 2'b01, select = 0 (maior)
      a = 2'b10; b = 2'b01; select = 0;
      #10 $display("a=%b, b=%b, greater=%b", a, b, greater);

      // Teste 4: a = 2'b11, b = 2'b10, select = 1 (maior)
      a = 2'b11; b = 2'b10; select = 1;
      #10 $display("a=%b, b=%b, greater=%b", a, b, greater);

      $stop;
   end
endmodule // Guia_0707
