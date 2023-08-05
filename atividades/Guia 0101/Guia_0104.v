/*
 Guia_0102.v
 808721 - Guilherme Gomes de Brites
*/
module Guia_0104;
  // define data
  integer x = 0; // decimal
  integer resto = 0; // decimal
  integer resultado_divisao = 0;
  reg [7:0] binario = 8'b0010101; // binary
  integer a = 0;
  reg [7:0] abinario = 8'b0011010; // binary
  integer b = 0;
  reg [7:0] bbinario = 8'b0100111; // binary
  integer c = 0;
  reg [7:0] cbinario = 8'b0101001; // binary
  reg [7:0] binario2 = 8'b0101101; // binary
  // actions
  initial
  begin : main
  
	x = binario;
  	$display("De baixo para cima:");
    while (x > 0) // enquanto o resultado da divisao for maior que 0
    begin
      resto = x % 4; // guarda o resto da divisao do numero por 4
      resultado_divisao = x / 4; //guarda o resultado da divisao, para que na nova ele seja dividido
      $display("%d", resto);
      x = resultado_divisao; // atribui a x o resultado da divisao
    end
	
	a = abinario;
	$display("%o (8)", a);
	b = bbinario;
	$display("%x (16)", b);
	c = cbinario;
	$display("%o (8)", c);
	
	x = binario2;
  	$display("De baixo para cima:");
    while (x > 0) // enquanto o resultado da divisao for maior que 0
    begin
      resto = x % 4; // guarda o resto da divisao do numero por 4
      resultado_divisao = x / 4; //guarda o resultado da divisao, para que na nova ele seja dividido
      $display("%d", resto);
      x = resultado_divisao; // atribui a x o resultado da divisao
    end
	
  end // main
endmodule // Guia_0104
