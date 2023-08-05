/*
 Guia_0105.v
 808721 - Guilherme Gomes de Brites
*/
module Guia_0105;
// define data
 integer x = 13; // decimal
 reg [7:0] b ; // binary
 reg [0:8][7:0] s1 = "PUC-Minas"; // char array[3] (3x8 bits - little Endian)
 reg [0:6][7:0] s2 = "2023-02";
 reg [0:13][7:0] s3 = "Belo Horizonte";
 reg [0:4][7:0] s4;
 reg [0:4][7:0] s5;
// actions
 initial
	 begin : main
		 $display ("a) = %x" , s1);
		 $display ("b) = %x" , s2);
		 $display ("c) = %b" , s3);
		 s4[0] = 8'o116;
		 s4[1] = 8'o157; 
		 s4[2] = 8'o151; 
		 s4[3] = 8'o164; 
		 s4[4] = 8'o145; 
		 $display ("d) = %s" , s4);
		 s5[0] = 8'h4D; 
		 s5[1] = 8'h2E;
		 s5[2] = 8'h20; 
		 s5[3] = 8'h47;
		 s5[4] = 8'h2E;
		 $display ("e) = %s" , s5);
	 end // main
endmodule // Guia_0105