module ContadorAnelTorcido (
  input wire clk,
  input wire rst,
  output reg [4:0] out
);

  reg [4:0] state;

  always @(posedge clk or posedge rst) begin
    if (rst)
      state <= 5'b10000; // Inicialização com um bit em 1
    else
      state <= {state[3:0], state[4]};
  end

  assign out = state;

endmodule // ContadorAnelTorcido
