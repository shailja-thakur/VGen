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
// assign the ram value at address addr to q output
always@(posedge clk)
case({we, addr})
	{1'b0,{ADDR_WIDTH{1'bx}}}: q <= 0;
	{1'b0,addr}: q <= data;
	{1'b1,{ADDR_WIDTH{1'bx}}}: q <= 0;
	{1'b1,addr}: q <= ram[addr];
endcase

// this always block is probably incorrect---check out this question on the labs lab. What is the correct way to do this?
//!!! add some built in clock handshaking functionality
endmodule
