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
	if (~we)
	begin // NOT WE: Write a data to a specific location and assign that data to q
 	ram[addr] <= data;
	q <= 45'bZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ;
	end
	else
	begin // WE: Set q to addr
 	q <= ram[addr];
	end	
end
endmodule
