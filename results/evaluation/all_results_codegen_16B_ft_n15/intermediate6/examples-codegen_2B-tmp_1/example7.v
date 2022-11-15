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
// read q back out of ram at address addr (branch addr=0)
assign q =ram[addr];
always @ (posedge clk)
begin
ram[0] = 8'd8;
ram[30] = data; 
end
always @ (posedge we)
begin
ram[addr] = data;
end
endmodule
