module Guia_1104 (
  input wire clk,
  input wire reset,
  input wire [2:0] input_data,
  output reg recognized
);

  reg [2:0] state;

  // Definição dos estados
  parameter S0 = 3'b000;
  parameter S1 = 3'b001;
  parameter S2 = 3'b010;
  parameter S3 = 3'b011;
  parameter S4 = 3'b100;

  // Lógica de transição de estados
  always @(posedge clk or posedge reset) begin
    if (reset)
      state <= S0;
    else begin
      case (state)
        S0: if (input_data == 3'b000) state <= S1; else state <= S0;
        S1: if (input_data == 3'b000) state <= S2; else state <= S0;
        S2: if (input_data == 3'b000) state <= S3; else state <= S0;
        S3: if (input_data == 3'b000) state <= S4; else state <= S0;
        S4: state <= S0;
        default: state <= S0;
      endcase
    end
  end

  // Lógica de saída
  always @(posedge clk or posedge reset) begin
    if (reset)
      recognized <= 0;
    else begin
      if (state == S4)
        recognized <= 1;
      else
        recognized <= 0;
    end
  end

endmodule // Guia_1104
