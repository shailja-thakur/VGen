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
assign q = (we & addr[5]) ? data : ram[addr[5:0]];
// when we is low and clk is high, read data from address addr
always @(posedge clk)
begin
if (~we & addr[5])
ram[addr[5:0]] = data;
end
endmodule
