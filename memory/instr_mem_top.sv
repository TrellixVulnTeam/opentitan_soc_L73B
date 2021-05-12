`define DFFRAM

module instr_mem_top
(
  input clk_i,
  input rst_ni,

  input  logic        req,
  input  logic [11:0] addr,
  input  logic [31:0] wdata,
  output logic [31:0] rdata,
  output logic        rvalid,
  `ifdef DFFRAM
    input  logic [3:0]  wmask,
  `endif
  `ifndef DFFRAM
    input  logic [31:0]  wmask,
  `endif  
  input  logic        we
);

  always_ff @(negedge clk_i) begin
  if (!rst_ni) begin
    rvalid <= 1'b0;
  end else if (we) begin
    rvalid <= 1'b0;
  end else begin 
    rvalid <= req;
  end
  end

  `ifdef DFFRAM
    DFFRAM inst_memory (
      .CLK    (clk_i),  // system clk_i
      .EN     (req),    // chip enable
      .WE     (wmask),   // write mask
      .DI     (wdata),  // data input
      .DO     (rdata),  // data output
      .A      (addr)    // address
    );
  `endif

  `ifndef DFFRAM

    gf12lp_1rw_lg12_w32_bit inst_memory (
      .A(addr),
      .D(wdata),
      .CEN(req),
      .CLK(clk_i),
      .Q(rdata),
      .WEN(~rst_ni ? wmask : 'hffff),
      .GWEN(~rst_ni ? &wmask : 'b1),
      .EMA(3'b010),
      .EMAW(2'b01),
      .EMAS(1'b0),
      .RET1N(1'b1),
      .STOV(1'b0)
    );
  `endif

endmodule
