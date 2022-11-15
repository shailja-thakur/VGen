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

always @ *
begin
if(we) ram[addr] = data;
end
assign q = ram[addr];

// when reset is high, initialise ram to all zeroes
always @ (posedge clk)
begin
if(!reset_n)
begin
	for(i=0; i<64; i=i+1)
	begin
// assign data to ram at i
ram[i] = 0;

end
end
end
endmodule
