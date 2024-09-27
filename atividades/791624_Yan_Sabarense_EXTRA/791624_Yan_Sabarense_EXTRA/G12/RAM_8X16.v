module RAM_8x16 (
  input wire clk,
  input wire [2:0] address,
  input wire [15:0] data_in,
  input wire write_enable,
  output reg [15:0] data_out
);

  reg [15:0] memory [0:7];

  always @(posedge clk) begin
    if (write_enable)
      memory[address] <= data_in;
    data_out <= memory[address];
  end

endmodule // RAM_8x16
