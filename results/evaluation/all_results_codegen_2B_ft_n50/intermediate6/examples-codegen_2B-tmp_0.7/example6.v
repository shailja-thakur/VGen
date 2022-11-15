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
// assign the ram value stored in ram[addr] to q
// When we are either writing or reading, the clock input clk must be active
always @(posedge clk)
if(we)
ram[addr]<=data;
endmodule
