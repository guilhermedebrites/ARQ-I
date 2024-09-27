module DeslocamentoCircularEsquerda (
  input wire clk,
  input wire rst,
  input wire load,
  output reg [4:0] out
);

  reg [4:0] shift_reg;

  always @(posedge clk or posedge rst) begin
    if (rst)
      shift_reg <= 5'b11111; // Carga inicial com todos os estágios em 1
    else if (load)
      shift_reg <= 5'b11111; // Carga inicial com todos os estágios em 1
    else
      shift_reg <= {shift_reg[3:0], shift_reg[4]};
  end

  assign out = shift_reg;

endmodule // DeslocamentoCircularEsquerda
