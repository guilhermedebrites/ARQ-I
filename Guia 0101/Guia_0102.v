/*
 Guia_0102.v
 808721 - Guilherme Gomes de Brites
*/
module Guia_0102;
// define data
 integer a = 0; // decimal
 reg [7:0] abinario = 8'b0010110; // binary (bits - little endian)
 integer b = 0; // decimal
 reg [7:0] bbinario = 8'b0011011; // binary (bits - little endian)
 integer c = 0; // decimal
 reg [7:0] cbinario = 8'b0100100; // binary (bits - little endian)
 integer d = 0; // decimal
 reg [7:0] dbinario = 8'b0101001; // binary (bits - little endian)
 integer e = 0; // decimal
 reg [7:0] ebinario = 8'b0110111; // binary (bits - little endian)
// actions
 initial
	 begin : main
		 $display ( "Guia_0102 - Binario para decimal" );
		 $display ( "a(2) = %8b", abinario );
		 a = abinario;
		 $display ( "a(10) = %d", a );
		 $display ( "b(2) = %8b", bbinario );
		 b = bbinario;
		 $display ( "b(10) = %d", b );
		 $display ( "c(2) = %8b", cbinario );
		 c = cbinario;
		 $display ( "c(10) = %d", c );
		 $display ( "d(2) = %8b", dbinario );
		 d = dbinario;
		 $display ( "d(10) = %d", d );
		 $display ( "e(2) = %8b", ebinario );
		 e = ebinario;
		 $display ( "e(10) = %d", e );
 end // main
endmodule // Guia_0102
