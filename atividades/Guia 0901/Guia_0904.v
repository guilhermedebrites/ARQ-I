`include "Guia_0900.v"


module pulse(output reg signal, input clock);
    reg [1:0] count = 0;  

    always @(posedge clock)
    begin
        if(count < 3) 
        begin
        	#1;
            signal = ~signal; 
            count = count + 1;
        end
        else 
        begin
            count = 0;
            signal = ~signal;
        end
    end
endmodule


module Guia_0904;
    wire clock;
    clock clk(clock);
    wire signal;
    pulse pulse1(signal, clock);
    
    initial begin
        $dumpfile("Guia_0904.vcd");
        $dumpvars(0, Guia_0904);
        #500 $finish;
    end
endmodule
