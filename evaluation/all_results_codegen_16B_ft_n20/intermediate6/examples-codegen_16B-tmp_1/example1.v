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
assign q = (we) ? ram[addr] : 8'bzzzz_zzzz; 
// Write enable signal. When high for more than 1 clock
// period, the ram value is written to the ram address
// given by the Write Address (addr).
always @(posedge clk)
begin
//write the data when the "we" is 1
	if (we) begin
	ram[addr] <= data;	// when "we" is 1, write the input data to the ram
	end
	// else maintain the content of ram[addr].
end
endmodule
