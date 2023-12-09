module RAM_4x8 (
  input wire clk,       
  input wire reset,     
  input wire write_en,  
  input wire[1:0] address, 
  input wire[7:0] data_in,  
  output wire[7:0] data_out 
);

  wire [3:0] data_out_ram1, data_out_ram2, data_out_ram3, data_out_ram4;

  ram_2x4 ram1 (
    .clk(clk),
    .reset(reset),
    .write_en(write_en),
    .address(address),
    .data_in(data_in[3:0]),
    .data_out(data_out_ram1)
  );

  ram_2x4 ram2 (
    .clk(clk),
    .reset(reset),
    .write_en(write_en),
    .address(address),
    .data_in(data_in[7:4]),
    .data_out(data_out_ram2)
  );

  ram_2x4 ram3 (
    .clk(clk),
    .reset(reset),
    .write_en(write_en),
    .address(address),
    .data_in(data_in[11:8]),
    .data_out(data_out_ram3)
  );

  ram_2x4 ram4 (
    .clk(clk),
    .reset(reset),
    .write_en(write_en),
    .address(address),
    .data_in(data_in[15:12]),
    .data_out(data_out_ram4)
  );

  wire[3:0] data_out_mux;
  always @ (address, data_out_ram1, data_out_ram2, data_out_ram3, data_out_ram4)
  begin
    case (address)
      2'b00: data_out_mux = data_out_ram1;
      2'b01: data_out_mux = data_out_ram2;
      2'b10: data_out_mux = data_out_ram3;
      2'b11: data_out_mux = data_out_ram4;
    endcase
  end

  assign data_out = {data_out_mux, data_out_mux};

endmodule
