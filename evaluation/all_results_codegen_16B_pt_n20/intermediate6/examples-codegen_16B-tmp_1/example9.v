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
task ram_write;
    if (we) {
        ram[addr] = data;
    }
    q = ram[addr];
endtask

#(parameter LUT_WIDTH=4)
reg [DATA_WIDTH-1:0] ram_lut[LUT_WIDTH-1:0];
// assignment
task ram_cb;
    ram_lut = ram_write.ram[addr];
    ram[addr] = ram_write.ram[addr];
endtask

module top;
    // always clock a clock domain

    // some wires, maybe an address bus
    RAM ram(.DATA_WIDTH(DATA_WIDTH), .ADDR_WIDTH(ADDR_WIDTH));

    // using RAM as LUT, 4:1 LUT2

    lut1 lutendmodule
