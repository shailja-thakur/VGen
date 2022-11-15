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
always @(we) ram_we_r();
assign q [q:0,data[q]:WIDE_UP_WIDTH](ram[addr:WIDE_UP_WIDTH]);
always @(clk) ram_clk_r();
// when aclk emits a high level, write the new address addr
// to the ram to assign a new value to ram
assign addr [addr:"ram_addr"], q[addr:WIDE_DOWN_WIDTH](RAM_ADDR_VAL);
initial begin
    ram[0] = 1'b0;
    ram[127] = 1'b1;
affinity_mode rama;
end

always @(clk)
{
    ram[0] = 1'b0;
    q = zext<>("ram_addr"_a[7:0]);  endmodule
