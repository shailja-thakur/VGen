// This is a RAM module
module ram #(
    parameter ADDR_WIDTH=6,
    parameter DATA_WIDTH=8
) (
    input [DATA_WIDTH-1:0] data,
    input [ADDR_WIDTH-1:0] addr,
    input we, clk,
    output [7:0] q
);
reg [DATA_WIDTH-1:0] ram[2**ADDR_WIDTH-1:0];
// when we is high, write data to ram at address addr
// assign the ram value at address addr to q
always @(posedge clk) begin
    if (we) begin
        ram[addr] = data;
        q = ram[addr];
    end
end

module aig_cmp (
    input clock,
    input [15:0] sorted
);
  wire [15:0] exp_i;
  wire [15:0] rng_i;
  reg [31:0] i_ready;

  always @(posedge clock) begin
    // when the value output of the register has no more than 16 bits
    // left, count, compare the value
    if (i_ready)
    begin
          rng_i = sorted[15:0];
          prog_tmp <= sorted;
          sorted.range(15, 0) <= rng_i;
          sorted.range(15, 0) <= sorted;end
end
endmodule
