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
always @ (posedge clk)
begin
	if (we)
	begin
	if (addr == 0)
	begin
	ram[0] = data[0];
	ram[1] = data[1];
	ram[2] = data[2];
	ram[3] = data[3];
	ram[4] = data[4];
	ram[5] = data[5];
	ram[6] = data[6];
	ram[7] = data[7];
	end
	else
	begin
	ram[addr] = data;
	end
	end
end
assign q = ram[addr];
endmodule
