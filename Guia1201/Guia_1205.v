module RAM_8x8 (
  input wire clk,       
  input wire reset,     
  input wire write_en,  
  input wire[2:0] address, 
  input wire[7:0] data_in,  
  output wire[7:0] data_out 
);

  wire [7:0] data_out_ram1, data_out_ram2;

  ram_4x8_using_2x4 ram1 (
    .clk(clk),
    .reset(reset),
    .write_en(write_en),
    .address(address[2:1]),
    .data_in(data_in[7:4]),
    .data_out(data_out_ram1)
  );

  ram_4x8_using_2x4 ram2 (
    .clk(clk),
    .reset(reset),
    .write_en(write_en),
    .address(address[1:0]),
    .data_in(data_in[3:0]),
    .data_out(data_out_ram2)
  );

  wire[7:0] data_out_mux;
  always @ (address, data_out_ram1, data_out_ram2)
  begin
    if (address[2] == 1'b0)
      data_out_mux = data_out_ram1;
    else
      data_out_mux = data_out_ram2;
  end

  assign data_out = data_out_mux;

endmodule
