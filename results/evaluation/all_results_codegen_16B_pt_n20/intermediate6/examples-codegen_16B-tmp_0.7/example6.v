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
always @(posedge clk)
    if (we)
        ram[addr] <= data;
    q <= ram[addr];

always @(posedge clk)
    if (we and ~clk)
        q <= 0;

// The following timing constraint ensures that the address and
// data are available at the same time.
//  t_poc: max(1, (addr_bits+data_bits+4)/6)
//  t_setup: 1
//  t_hold: 1
//  t_fall: max(1, (addr_bits+data_bits+5)/6)
//  t_rise: max(1, (addr_bits+data_bits+5)/6)
//
//  t_setup + t_hold + t_fall + t_rise = 5/6*(addr_bits+dataendmodule
