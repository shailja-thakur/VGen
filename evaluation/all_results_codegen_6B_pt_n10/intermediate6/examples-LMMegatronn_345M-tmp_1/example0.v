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
// We use a stored data in the ROM chip
always @(posedge clk) begin
  ram[addr] <= data;
end

initial
begin
$readmemh("boot.mem", ram);
end

endmodule
