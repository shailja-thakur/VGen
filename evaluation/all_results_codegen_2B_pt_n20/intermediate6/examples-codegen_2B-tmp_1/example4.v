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
always @ (we) ram[0] = q && addr[7:0];
// --- ram sample and timing
wire [DATA_WIDTH-1:0] data_w;
wire [ADDR_WIDTH-1:0] addr_w;
reg ram_addr #6 = 0;
always @ (clk) ram_addr_out = ram_addr_in;
always @ (we) ram_addr[7:0] = ram_addr_in;
wire ask = 0;
always @ (!$newline) tmp = 0;
always @ (timer_clk || tmp) ram_addr = ram_addr + [&] (impulse_clock i, ram_addr_out o) {
    if (ram_addr != o) ram_addr = ram_addr ^ 0xff;
    ask = 0;
    data_w <= iendmodule
