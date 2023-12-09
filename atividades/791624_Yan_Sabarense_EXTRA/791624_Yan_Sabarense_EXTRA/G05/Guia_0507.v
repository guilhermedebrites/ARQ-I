module Guia_0507(output wire result, input wire a, input wire b);

  wire xor_output;
  wire not_b;

  // Implementação da operação XOR usando NOR
  nor #(2) u1 (xor_output, a, ~b);

  // Porta NOT para ~b
  nor #(2) u2 (not_b, b, b);

  // Porta NOR para ~(a ^ ~b)
  nor #(2) u3 (result, xor_output, not_b);

  // Teste de verificação funcional
  initial begin
    $display("Testing ~(a ^ ~b)");

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
