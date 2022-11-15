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
    if (we) ram[addr] = data;
    q <= ram[addr];
end

// for write, the RAM in this example is a simple RAM.
// there is a second RAM (which is not shown) used for
// software controlled write.
always @ (clk)
begin
    if (clk)
        ram[addr] <= data;
end

// This is a RAM module that uses a logic gate to
// control write.  The RAM is a simple RAM.
module ram_gate #(
    parameter ADDR_WIDTH=6,
    parameter DATA_WIDTH=8
) (
    input [DATA_WIDTH-1:0] data,
    input [ADDR_WIDTH-1:0] addr,
    input [ADDR_Wendmodule
