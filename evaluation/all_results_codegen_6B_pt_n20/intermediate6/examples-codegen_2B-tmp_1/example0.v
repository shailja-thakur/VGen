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
// when we is low, read data from ram at address addr
// data is written to ram when address and write enable are high
// ram[addr] holds the information at address addr
always @(posedge clk)
begin
if (we) 
	 ram[addr] <= data;
else 
	 q<= ram[addr];
end
// creating a small program to show off the ram module
initial
begin
// writing to the ram module
#10 data=8'd100; addr=6'd25; we=1'b1;
#10 data=8'd0; we=1'b0;
end
endmodule
