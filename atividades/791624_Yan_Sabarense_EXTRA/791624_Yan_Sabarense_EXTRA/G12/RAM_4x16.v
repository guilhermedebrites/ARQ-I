module RAM_4x16 (
  input wire clk,
  input wire [1:0] address,
  input wire [7:0] data_in,
  input wire write_enable,
  output reg [15:0] data_out
);

  reg [7:0] memory [0:3];

  always @(posedge clk) begin
    if (write_enable)
      memory[address] <= data_in;
    data_out <= {memory[address], 8'b0};
  end

endmodule // RAM_4x16
