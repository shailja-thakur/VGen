// This is a RAM module
module ram #(
    parameter ADDR_WIDTH=6,
    parameter DATA_WIDTH=8
) (
    input [DATA_WIDTH-1:0] data,
    input [ADDR_WIDTH-1:0] addr,
    input we, clk,
    output [7:0] q
);
reg [DATA_WIDTH-1:0] ram[2**ADDR_WIDTH-1:0];
// when we is high, write data to ram at address addr
// assign the ram value at address addr to q
always @ (we, clk)
begin
    if (we == 0)
        q <= lo(ram[addr]);
    else
        q <= hi(ram[addr]);
end
// when we is low, read data from ram at address addr
// assign q to value at address addr
always @ (clk, we)
begin
    if (we == 0)
        ram[addr] <= q;
end
// when we is high, write addr to ram at address addr
// assign the ram value at address addr to q
always @ (we, clk)
begin
    if (we == 1)
        q <= lo(addr);
    else
        q <= hi(addr);
end
// when we is low, read addr from ram at address addr
// assign addr to q
always @ (clk, we)
begin
    if (we == 0end
endmodule
