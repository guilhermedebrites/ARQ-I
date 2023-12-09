module Guia_0906 (
  input wire clk,
  output reg pulse
);

  reg [3:0] counter;

  always @(negedge clk) begin
    if (counter == 4) begin
      pulse <= 1;
      counter <= 0;
    end else begin
      pulse <= 0;
      counter <= counter + 1;
    end
  end

endmodule // Guia_0906
