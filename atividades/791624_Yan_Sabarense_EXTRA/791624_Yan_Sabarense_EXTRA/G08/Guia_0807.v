module Guia_0807(
  output wire result,
  input wire [5:0] a,
  input wire [5:0] b,
  input wire select
);

  // Comparador de igualdade
  assign result = (a == b);

  // Selecionar resultado por uma entrada extra (chave)
  assign result = (select) ? result : 1'b0;

  // Teste de verificação funcional
  initial begin
    $display("Testing Guia_0807");

    // Teste 1: a = 6'b001100, b = 6'b110011, select = 1
    a = 6'b001100; b = 6'b110011; select = 1;
    #10 $display("a=%b, b=%b, select=%b, result=%b", a, b, select, result);

    // Teste 2: a = 6'b101010, b = 6'b010101, select = 0
    a = 6'b101010; b = 6'b010101; select = 0;
    #10 $display("a=%b, b=%b, select=%b, result=%b", a, b, select, result);

    // Teste 3: a = 6'b111111, b = 6'b000000, select = 1
    a = 6'b111111; b = 6'b000000; select = 1;
    #10 $display("a=%b, b=%b, select=%b, result=%b", a, b, select, result);

    // Teste 4: a = 6'b110000, b = 6'b110000, select = 0
    a = 6'b110000; b = 6'b110000; select = 0;
    #10 $display("a=%b, b=%b, select=%b, result=%b", a, b, select, result);

    $stop;
  end
endmodule // Guia_0807
