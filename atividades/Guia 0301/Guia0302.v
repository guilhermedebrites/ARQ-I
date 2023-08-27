/*
 Guia_0302
*/
module Guia_0302;
// define data
 reg [5:0] a = 8'o55; 
 reg [7:0] b = 8'h5c ; 
 reg [5:0] c = 8'o66 ; 
 reg [6:0] d = 8'o157 ;
 reg [7:0] e = 8'hE3 ; 

 reg [5:0] resp6 = 0 ; 
 reg [6:0] resp7 = 0 ; 
 reg [7:0] resp8 = 0 ; 

// actions
 initial begin : main
 $display ( "Guia_0302 - 808721 - Guilherme Gomes de Brites" );
 resp6 = ~a+1;
 $display ( "a = %8b -> C1(a) = %8b -> C2(a) = %8b", a, ~a, resp6 );
 resp8 = ~b+1;
 $display ( "b = %8b -> C1(b) = %8b -> C2(b) = %8b", b, ~b, resp8 );
 resp6 = ~c+1;
 $display ( "c = %8b -> C1(c) = %8b -> C2(c) = %8b", c, ~c, resp6 );
 resp7 = ~d+1;
 $display ( "d = %8b -> C1(d) = %8b -> C2(d) = %8b", d, ~d, resp7 );
 resp8 = ~e+1;
 $display ( "e = %8b -> C1(e) = %8b -> C2(e) = %8b", e, ~e, resp8 );


 end // main
endmodule // Guia_0302
