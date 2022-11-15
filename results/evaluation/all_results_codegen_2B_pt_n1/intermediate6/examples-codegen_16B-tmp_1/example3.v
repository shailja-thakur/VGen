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
	if (we)
	begin
	ram[addr] = data;
	end
	
	
end
	//prepends a 0 when reading from address 0
	//so as to effect a reset of the ram
	//when we = 0, cause q to be returned when we clk is high
	assign q = (addr[0] == 1'b0) ? ram[addr] : 8'b0; //inside main this causes the 0 to be returned
endmodule
