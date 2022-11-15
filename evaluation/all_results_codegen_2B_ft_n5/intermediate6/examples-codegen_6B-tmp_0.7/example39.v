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
// Note that since this is a write-first architecture, the output q is defined as being the same
// as the input data.
assign q = we? ram[addr] : q;
// read the ram value at address addr into data
always @(posedge clk)
	data = ram[addr];
endmodule
