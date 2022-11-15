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
always @ (we, clk, we)
begin
    if (clk == 1)
        q <= data[5:0];
end
// when we is low, read data from ram at address addr
always @ (we, clk, we)
begin
    if (clk == 0)
        data <= ram[addr];
end
endmodule
