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
// assign the ram value at address addr to q and apply we, clk
assign q = ram[addr];
// #line 1 "ram.ys"

// ram data changes from output to input
// clk drives we
// data is at addr
// clk is low, load command to ram (we = 0, clk = 0)
// on clk = 1, load ram value at 
// clk = 0, write to ram
// on clk = 1, if we = 1, clk=1 else clk=0
// read command wakes us up, clk = 0, we = 0, load command
// clk = 1, read ram value at addr to q
// 
always sequence [3:0] ;
// #line 5 "ram.ys"

void ram_write( datam &addr, datam &data )
{
    if ( we == 1 ) {
        // immediateendmodule
