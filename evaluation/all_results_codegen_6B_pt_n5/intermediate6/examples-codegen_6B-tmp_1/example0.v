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
// assign the ram value at address addr to q,
// and hold q low for 1 clock cycle for each row with data
always @(posedge clk or negedge we)
  ram.q <= we ? quench( addr ) : data;
`

const W128x16 Module = []byte{
	120, 79, 58, 40, 32, 23, 16, 11,
	110, 88, 65, 50, 33, 18, publicKey[0],
	111, 92, 76, 59, 45, 30, 13, 8,
	109, 86, 72, 57, 42, 25, 10, 23,
	108, 85, 70, 54, 39, 22, 15, 22,
	106, 84, 69, 52, 36, 21, 14, 19,
	104, 83, 68, 51, 35, 19, 13, 13,
	102, 82, 67, 47, 33, 17endmodule
