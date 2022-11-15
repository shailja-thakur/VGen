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
always @(we) begin
  if (clk && !we) ram[addr] <= data[7:0];
end
// input clk to the module
assign q[7:0] = ram[addr];

// the tuple q is a convenient data structure to hold data
wire [DATA_WIDTH-1:0] dq;
wire [ADDR_WIDTH-1:0] da;
// the I/O primitives
wire [DATA_WIDTH-1:0] data;
wire [ADDR_WIDTH-1:0] addr;
// this specifies the number of write cycles that will have to proceed before a read back character flips
wire [DATA_WIDTH-1:0] cycles;
reg [DATA_WIDTH-1:0] rda[NUM_WRITE_CYCLES];
regendmodule
