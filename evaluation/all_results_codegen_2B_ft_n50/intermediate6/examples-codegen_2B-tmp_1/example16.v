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
 if (we)
 ram[addr] <= data;
 assign q <= ram[addr];
 end
 endmodule `timescale 1ns / 1ps

/**
 * Papilio Implements an RTL source based on the SaveNetmap Module Model
 * from PR5 revision 3
 * Game Center Code : 0011111http://electronisave.gameblitz.com
 *
 * Uni-directional 1-bit RAM
 *
 * Revision: 3
 */

module clocker
	# (parameter CLOCK1 = 169)
	(
	input clk_68k, reset, clk_5HZ, // 5HZ clock switch moving in opposite directions
	output bln, clr, log, lamp // Lights per output
	);
	reg [3:0] cnt;
	wire clknendmodule
