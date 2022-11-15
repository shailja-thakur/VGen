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
always @ (we, clk) ram[addr[3:0]][7:0] = data;
// clk is the clock signal to ram
always @ (we, clk) ram[addr[3:0]][7] = data[7:0];
// when addr is high, assign the ram value at address addr to q
always @ (we, clk) ram[addr[3:0]][7:0] = data;
// clk is the clock signal to ram
always @ (we, clk) ram[addr[3:0]][7:0] = data[7:0];
// when addr is high, assign the ram value at address addr to q
always @ (we, clk) ram[addr[3:0]][7] = data[7];
// clk is the clock signal to ram
always @ (we, clendmodule
