// -------------------------
// Nome: Guilherme Gomes de Brites
// Matricula: 808721
// -------------------------
module mux ( output s, input a, input b,input select );
// definir dados locais
wire not_select;
wire sa;
wire sb;
// descrever por portas
not NOT1 ( not_select, select );
and AND1 ( sa, a, not_select );
and AND2 ( sb, b, select );
or OR1 ( s , sa, sb);
endmodule // mux

module LU (output s0,s1,s, 
           input a,b,select);
or OR1 (s0,a,b);
and AND1(s1,a,b);
mux MUX1(s,s0,s1,select);
endmodule

module test_LU;
reg a,b;
reg select;
wire s0,s1,s;


LU LU1 ( s0,s1,s,a,b,select);

initial begin

a=0;b=0;select=0;
end


initial begin: main 
    $display(" Exemplo_0701 - Guilherme Gomes de Brites - 808721");
    $display(" Exemplo 01"); 
    $display ("a b | s0 s1 s");
    $monitor ("%2b%2b%3b%3b%3b" , a,b,s0,s1,s);

#1 b=1;
#1 a =1; b=0;
#1 b=1;
#1 a=0; b=0; select=1;
#1 b=1;
#1 a =1; b=0;
#1 b=1;

end 
endmodule



















