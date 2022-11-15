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
// when we is low, read data from ram at address addr
always @(posedge clk)
begin
case ({we,addr}) 
{1'b0,6'b0}: q <= 8'b0;
{1'b0,6'b100000}: q <= ram[addr];
{1'b0,6'b000100}: q <= ram[addr];
{1'b0,6'b000001}: q <= ram[addr];
{1'b0,6'b000010}: q <= ram[addr];
{1'b0,6'b000011}: q <= ram[addr];
{1'b0,6'b000101}: q <= ram[addr];
{1'b0,6'b000110}: q <= ram[addr];
{1'b0,6'b000111}: q <=end
endmodule
