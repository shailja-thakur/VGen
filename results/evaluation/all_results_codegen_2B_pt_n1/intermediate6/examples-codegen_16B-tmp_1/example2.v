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
always @(posedge clk)
begin
	case({we, addr})
	{2'b10, 5'b00000}: q <= 8'h00;// should sets ram[0] = 0
	{2'b10, 5'b00001}: q <= 8'h01;// should sets ram[1] = 1
	{2'b10, 5'b00010}: q <= 8'h02;// should sets ram[2] = 2
	{2'b10, 5'b00011}: q <= 8'h03;// should sets ram[3] = 3
	{2'b10, 5'b00100}: q <= 8'h04;// should sets ram[4] = 4
	{2'b10, 5'b00101}: q <= 8'h05;// should sets ram[5] = 5
	{end
endmodule
