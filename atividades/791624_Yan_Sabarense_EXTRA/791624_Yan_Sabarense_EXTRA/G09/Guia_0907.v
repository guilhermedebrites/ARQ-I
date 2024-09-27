module Guia_0907 (
  input wire clk,
  output reg pulse
);

  reg [4:0] counter;

  always @(posedge clk) begin
    if (counter == 5) begin
      pulse <= 1;
      counter <= 0;
    end else begin
      pulse <= 0;
      counter <= counter + 1;
    end
  end

endmodule // Guia_0907
