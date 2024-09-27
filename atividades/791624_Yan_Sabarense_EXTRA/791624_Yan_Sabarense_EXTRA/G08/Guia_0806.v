module Guia_0806(
  output wire [5:0] result,
  output wire equal,
  input wire [5:0] a,
  input wire [5:0] b,
  input wire carryIn,
  input wire select
);

  wire [5:0] inverted_b;
  wire [5:0] complement_b;
  wire [5:0] sum_result;

  // Inverter B quando carryIn=1 (subtração)
  assign inverted_b = (carryIn) ? ~b : b;

  // Calcular o complemento de 1 quando carryIn=1 (subtração)
  assign complement_b = inverted_b + 1;

  // Somador completo (carryIn controla a operação de subtração)
  assign sum_result = (carryIn) ? a + complement_b : a + b;

  // Selecionar resultado por uma segunda entrada extra (chave)
  assign result = (select) ? sum_result : 6'b000000;

  // Verificar igualdade
  assign equal = (a == b);

  // Teste de verificação funcional
  initial begin
    $display("Testing Guia_0806");

    // Teste 1: a = 6'b001100, b = 6'b110011, carryIn = 0, select = 1
    a = 6'b001100; b = 6'b110011; carryIn = 0; select = 1;
    #10 $display("a=%b, b=%b, carryIn=%b, select=%b, result=%b, equal=%b", a, b, carryIn, select, result, equal);

    // Teste 2: a = 6'b101010, b = 6'b010101, carryIn = 1, select = 0
    a = 6'b101010; b = 6'b010101; carryIn = 1; select = 0;
    #10 $display("a=%b, b=%b, carryIn=%b, select=%b, result=%b, equal=%b", a, b, carryIn, select, result, equal);

    // Teste 3: a = 6'b111111, b = 6'b000000, carryIn = 0, select = 1
    a = 6'b111111; b = 6'b000000; carryIn = 0; select = 1;
    #10 $display("a=%b, b=%b, carryIn=%b, select=%b, result=%b, equal=%b", a, b, carryIn, select, result, equal);

    // Teste 4: a = 6'b110000, b = 6'b110000, carryIn = 1, select = 0
    a = 6'b110000; b = 6'b110000; carryIn = 1; select = 0;
    #10 $display("a=%b, b=%b, carryIn=%b, select=%b, result=%b, equal=%b", a, b, carryIn, select, result, equal);

    $stop;
  end
endmodule // Guia_0806
