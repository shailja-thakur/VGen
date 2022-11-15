// This is a ram module
module ram
(
input [7:0] data,
input [5:0] addr,
input we, clk,
output [7:0] q
);
reg [7:0] ram[63:0];
// when we is high, write data to ram at address addr
// assign the ram value at address addr to q
// raster line loop. addr is column, counter is row
always @(posedge clk)
if (we)
case (addr)

// 0000
7'b0000000: ram[0] <= data;
7'b0000001: ram[1] <= data;
7'b0000010: ram[2] <= data;
7'b0000011: ram[3] <= data;
7'b0000100: ram[4] <= data;
7'b0000101: ram[5] <= data;
7'b0000110: ram[6] <= data;
7'b0000111: ram[7] <= data;
// 0001
7'b0001000: ram[8] <= data;
7'b0001001: ram[9] <= data;
7'b0001010: ram[10] <= data;
7'b0001011:endmodule
