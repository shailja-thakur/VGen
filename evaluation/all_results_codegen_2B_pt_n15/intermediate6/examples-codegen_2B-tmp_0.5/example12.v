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
assign q[7:0] = data[DATA_WIDTH-1:0] when we = 1 else 0;
// when clk is high, increment addr
assign addr[ADDR_WIDTH-1:0] = addr[ADDR_WIDTH-1:0] + 1 when clk = 1 else 0;
// when we is low, read data from ram at address addr
assign data[DATA_WIDTH-1:0] = ram[addr[ADDR_WIDTH-1:0]];
// when clk is low, write data to ram at address addr
assign ram[addr[ADDR_WIDTH-1:0]] = data[DATA_WIDTH-1:0] when clk = 0 else 0;
// this is a direct module
direct_module top =
{
    .clk =endmodule
