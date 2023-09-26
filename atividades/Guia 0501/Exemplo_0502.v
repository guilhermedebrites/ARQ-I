/* -------------------------
// Exemplo_0502
// Nome: Guilherme Gomes de Brites
// Matricula: 808721
// -------------------------
*/

module f5 ( output s, input a, input b );
	// definir dado local
	wire not_a;
	// descrever por portas
	not NOT1 ( not_a, a );
 	nd AND1 ( s, not_a, b );
endmodule // f5


// ------------------------- definir dados
module dados;
    reg x;
    reg y;
    wire a, b;
    f5 moduloA ( a, x, y );

// ------------------------- parte principal
initial begin : main

    $display("Exemplo_0501 - Guilherme Gomes de Brites - 808721");
    $display("Exercicio 01\n");
    
    // projetar testes do modulo
    $monitor("%4b %4b %4b", x, y, a);

    x = 1'b0; y = 1'b0;
    #1
    x = 1'b0; y = 1'b1;
    #1
    x = 1'b1; y = 1'b0;
    #1
    x = 1'b1; y = 1'b1;

end
endmodule // test_f5
