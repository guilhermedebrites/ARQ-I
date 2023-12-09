/*
 Guia_0102.v
 808721 - Guilherme Gomes de Brites
*/
module Guia_0103;
  // define data
  integer x = 61; // decimal
  integer resto = 0; // decimal
  integer resultado_divisao = 0;
  integer b = 54; // decimal
  reg [7:0] bbinario = 0; // binary
  integer c = 77; // decimal
  reg [7:0] cbinario = 0; // binary
  integer d = 151; // decimal
  reg [7:0] dbinario = 0; // binary
  integer e = 738; // decimal
  reg [7:0] ebinario = 0; // binary
  
  // actions
  initial
  begin : main
  	$display("De cima para baixo:");
    while (x > 0) // enquanto o resultado da divisao for maior que 0
    begin
      resto = x % 4; // guarda o resto da divisao do numero por 4
      resultado_divisao = x / 4; //guarda o resultado da divisao, para que na nova ele seja dividido
      $display("%d", resto);
      x = resultado_divisao; // atribui a x o resultado da divisao
    end
	bbinario = b;
	$display ("b = %o (8)", b);
	cbinario = c;
	$display ("c = %x (16)", c);
	dbinario = d;
	$display ("d = %x (16)", d);
	ebinario = e;
	$display ("e = %x (16)", e);
  end // main
endmodule // Guia_0103
