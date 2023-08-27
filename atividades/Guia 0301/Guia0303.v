/*
 Guia_0303
*/
module Guia_0303;
// define data
 reg signed [7:0] a = 8'b10111; // binary
 reg signed [6:0] b = 8'b110101 ; // binary
 reg signed [5:0] c = 8'b110110 ; // binary
 reg signed [7:0] d = 8'b1011001 ; // binary
 reg signed [8:0] e = 8'b10100101 ; // binary


 reg signed [7:0] resp7 = 0 ; // binary
 reg signed [6:0] resp6 = 0 ; // binary
 reg signed [6:0] hexa = 8'h0 ; // binary
// actions
 initial begin : main
 $display ( "Guia_0303 - 808721 - Guilherme Gomes de Brites" );
 resp7 = ~a+1;
 resp6 = ~(a-1);
 $display ( "a = %8b -> C1(a) = %8b -> C2(a) = %8b = %d = %d", a, ~a, resp7, resp7, resp6 );
 resp7 = ~b+1;
 resp6 = ~(b-1);
 $display ( "b = %7b -> C1(b) = %7b -> C2(b) = %7b = %d = %d", b, ~b, resp7, resp7, resp6 );
 resp7 = ~c+1;
 resp6 = ~(c-1);
 $display ( "c = %6b -> C1(c) = %6b -> C2(c) = %6b = %d = %d", c, ~c, resp7, resp7, resp6 );
 resp7 = ~d+1;
 resp6 = ~(d-1);
 $display ( "d = %6b -> C1(d) = %6b -> C2(d) = %6b = %d = %d", d, ~d, resp7, resp7, resp6 );
 resp7 = ~e+1;
 resp6 = ~(e-1);
 hexa = resp7;
 $display ( "e = %6b -> C1(e) = %6b -> C2(e) = %6b = %d = %d = %h", e, ~e, resp7, resp7, resp6, hexa);


 end // main end // main
endmodule // Guia_0303
