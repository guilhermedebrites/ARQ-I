/*
Guia_0304
*/
module Guia_0304;
// define data

reg signed [7:0]  a = 8'b11110;
reg signed [6:0]  a2 = 8'b1101;
reg signed [6:0]  b = 8'b101_1001;
reg signed [4:0]  b2 = 8'b10_11;
reg signed [7:0]  c = 8'o55;
reg signed [7:0]  c2 = 8'o33;
reg signed [7:0]  d = 8'o321;
reg signed [7:0]  d2 = 8'o123;
reg signed [15:0] e = 16'h9c3;
reg signed [15:0] e2 = 16'ha1b;
reg signed [7:0] resp = 0; 

initial begin : main
$display ( "Guia_0304 - 808721 - Guilherme Gomes de Brites" );

    resp = a - a2;
    $display("A) resp = 11110 - 1101 | %8b - %8b = %4b", a, a2, resp);

    
    resp = b - b2;
    $display("B) resp = 101,1001 - 10,11 | %8b - %8b = %4b", b, b2, resp);

    resp = c - c2;
    $display("C) resp = 231 - 123 | %8b - %8b = %8o", c, c2, resp );
   
    resp = d - d2;
    $display("D) resp = 321 - 123 | %8o - %8o = %8o", d, d2, resp);

    resp = e - e2;
    $display("E) resp = 9C3 - A1B | %h - %h = %h", e, e2, resp);

end // main
endmodule

