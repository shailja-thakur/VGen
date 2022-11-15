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
assign q = (we==1'b1) ? data: ram[addr];

initial
begin
ram[0] = 0;
ram[1] = 1;
ram[2] = 2;
ram[3] = 3;
ram[4] = 4;
ram[5] = 5;
ram[6] = 6;
ram[7] = 7;
	end
endmodule
