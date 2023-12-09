module Guia_0508(output wire result, input wire a, input wire b);

  wire and_output;
  wire not_b;

  // Implementação da operação AND usando NAND
  nand #(2) u1 (and_output, a, ~b);

  // Porta NOT para ~b
  nand #(2) u2 (not_b, b, b);

  // Porta NAND para ~(a & ~b)
  nand #(2) u3 (result, and_output, not_b);

  // Teste de verificação funcional
  initial begin
    $display("Testing ~(a & ~b)");

    // Teste 1: a = 0, b = 0
    a = 0; b = 0;
    #10 $display("a=%b, b=%b, result=%b", a, b, result);

    // Teste 2: a = 1, b = 0
    a = 1; b = 0;
    #10 $display("a=%b, b=%b, result=%b", a, b, result);

    // Teste 3: a = 0, b = 1
    a = 0; b = 1;
    #10 $display("a=%b, b=%b, result=%b", a, b, result);

    // Teste 4: a = 1, b = 1
    a = 1; b = 1;
    #10 $display("a=%b, b=%b, result=%b", a, b, result);

    $stop;
  end

endmodule
