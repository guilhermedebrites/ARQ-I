module tb_Guia_090x;

  reg clk;
  reg [15:0] sim_time;
  wire pulse;

  // Instanciar o módulo Guia_090x
  Guia_090x uut (
    .clk(clk),
    .pulse(pulse)
  );

  // Teste de verificação funcional
  initial begin
    $display("Testing Guia_090x");

    // Inicializar clock
    clk = 0;
    sim_time = 0;

    // Gerar pulsos por um período
    #10 repeat (20) begin
      #5 clk = ~clk;
      sim_time = sim_time + 5;
    end

    // Verificar pulsos gerados
    #10 $display("Pulse at time %0t: %b", sim_time, pulse);

    $stop;
  end

endmodule // tb_Guia_090x
