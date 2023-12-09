module RAM_1x4 (
  input wire clk,       
  input wire reset,     
  input wire write_en,  
  input wire[1:0] address, 
  input wire[3:0] data_in,  
  output wire[3:0] data_out 
);

  reg [3:0] memory [0:1];

  always @(posedge clk or posedge reset)
  begin
    if (reset) begin
      for (int i = 0; i < 2; i = i + 1) begin
        memory[i] <= 4'b0000;
      end
    end
    else if (write_en) begin
      memory[address] <= data_in;
    end
  end

  always @(posedge clk)
  begin
    data_out <= memory[address];
  end

endmodule
