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
always @(posedge we)
begin: WRITE_QUANTITY
if (addr[0])
ram[addr[7:0]]<=data;
end
// if data is high, read the ram value at that address and assign it to output q -- 4 devices are available since we demand the data at port 4,5,6,7
// Else output is z (high impediance)
always @ (posedge clk)
if (~we)
if (~((~addr[0])||addr [7:1]))
q = 8'hzz;
else
q=ram[addr[7:0]]; 
endmodule
