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
assign q = ram[addr[7:0]];

wire [DATA_WIDTH-1:0] w;

// This module allows the value in RAM to be written to the hardware register
module wram #(
    parameter ADDR_WIDTH=6,
    parameter DATA_WIDTH=8
) (
    input [DATA_WIDTH-1:0] data,
    input [ADDR_WIDTH-1:0] addr,
    input we, clk,
    output [7:0] q
);
assign q = ram[addr[7:0]];

assign ram_we = we;
assign ram_clk = clk;

// This module controls the hardware register.
module rwram #(
    parameter ADDR_WIDTH=6,
    paramendmodule
