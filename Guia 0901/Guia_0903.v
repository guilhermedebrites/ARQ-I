`include "Guia_0900.v"

module pulse(output signal, input clock);
    reg [1:0] counter = 0; 
    reg signal;
    always @(posedge clock)
    begin
        if(counter < 2) signal = 1'b1; 
        else signal = 1'b0;            
        if(counter == 2) counter = 0; 
        else counter = counter + 1;    
    end
endmodule

module Guia_0903;
    wire clk;
    clock clk_module(clk);
    wire pulse_signal;
    pulse pulse_module(pulse_signal, clk);
    
    initial
    begin
        $dumpfile("Guia_0903.vcd");
        $dumpvars(0, Guia_0903);
        #500 $finish;
    end
endmodule
