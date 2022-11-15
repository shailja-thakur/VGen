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
	
	if (we) begin
	ram[addr] <= data;
	q <= data;
	end
	else
	q <= ram[addr];
	end
// initial block to load initial data to ram
initial
begin
clk = 0;
we = 1'b0;
addr = 6'h76;
data = 8'h69;
#9;
we = 1'b1;
addr = 6'h76;
data = 8'h123;
#9;
we = 1'b0;
addr = 6'h76;
end
// rising edge of clock to write other data of addr+1 to ram
always @(posedge clk)
begin
if (addr <= 7D)
begin

we <= 1;
addr <= (addr + 1);
endend
endmodule
