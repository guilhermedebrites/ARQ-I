/*
 Guia_0101.v
 808721 - Guilherme Gomes de Brites
*/
module Guia_0101;
// define data
 integer a = 26;// decimal
 reg [7:0] abinario = 0; // binary (bits - little endian)
 integer b = 53;// decimal
 reg [0:2][7:0] bbinario = 0; // binary (bits - little endian)
  integer c = 723;// decimal
 reg [0:2][7:0] cbinario = 0; // binary (bits - little endian)
  integer d = 312;// decimal
 reg [0:2][7:0] dbinario = 0; // binary (bits - little endian)
  integer e = 365;// decimal
 reg [0:2][7:0] ebinario = 0; // binary (bits - little endian)
// actions
 initial
 begin : main
 $display ( "Guia_0101 - Decimal para binario" );
 
 // 26(10) -> X(2)
 $display ( "a = %d (10)" , a );
 abinario = a;
 $display ( "a em binario = %8b (2)", abinario );
 
 // 53(10) -> X(2)
 $display ( "b = %d (10)" , b );
 bbinario = b;
 $display ( "b em binario = %8b (2)", bbinario );
 
 // 723(10) -> X(2)
 $display ( "c = %d (10)" , c );
 cbinario = c;
 $display ( "c em binario = %8b (2)", cbinario );
 
 // 312(10) -> X(2)
 $display ( "d = %d (10)" , d );
 dbinario = d;
 $display ( "d em binario = %8b (2)", dbinario );
 
  // 365(10) -> X(2)
 $display ( "e = %d (10)" , e );
 ebinario = e;
 $display ( "e em binario = %8b (2)", ebinario );
 end // main
endmodule // Guia_0101