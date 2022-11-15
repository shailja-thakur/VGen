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
always @(clk, we)
code2 #(
    parameter ADDR_WIDTH=6,
    parameter DATA_WIDTH=8
)
code3 #(
    parameter ADDR_WIDTH=6,
    parameter DATA_WIDTH=8
) (
    ready clk, q := ram[addr/DATA_WIDTH][data*8/DATA_WIDTH];
    ram[addr/DATA_WIDTH][data*8/DATA_WIDTH] := ~q;
    if we'b
    |
    we
  )
{
}
// when we is low, read data from ram at address addr
// write data to ram at address addr

reg [ADDR_WIDTH-1:0] port_addr;
reg [DATA_WIDTH-1:0]endmodule
