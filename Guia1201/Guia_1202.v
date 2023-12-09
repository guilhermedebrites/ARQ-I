module RAM_1x8 (
  input wire clk,       
  input wire reset,     
  input wire write_en,  
  input wire[0:0] address, 
  input wire[7:0] data_in,  
  output wire[7:0] data_out 
);

  wire [1:0] data_out_ram1, data_out_ram2;
  wire data_out_mux;

  ram_1x2 ram1 (
    .clk(clk),
    .reset(reset),
    .write_en(write_en),
    .address(address),
    .data_in(data_in[1:0]),
    .data_out(data_out_ram1)
  );

  ram_1x2 ram2 (
    .clk(clk),
    .reset(reset),
    .write_en(write_en),
    .address(address),
    .data_in(data_in[3:2]),
    .data_out(data_out_ram2)
  );

  always @ (address)
  begin
    if (address == 1'b0)
      data_out_mux = data_out_ram1;
    else
      data_out_mux = data_out_ram2;
  end

  assign data_out = {data_out_mux, data_out_mux};

endmodule
