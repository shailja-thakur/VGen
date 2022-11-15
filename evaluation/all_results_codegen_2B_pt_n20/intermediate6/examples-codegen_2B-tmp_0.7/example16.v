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
    if (clk == 1) begin
        ram[addr] = data;
        q <= data;
    end
end
end

// Example of a CMOS RAM
module cmos_ram (
    input [DATA_WIDTH-1:0] data,
    input [ADDR_WIDTH-1:0] addr,
    input we, clk,
    input RST
) (
    io mem_cmos, // CMOS
    input [7:0] q // ram output
);
reg [DATA_WIDTH-1:0] ram[2**ADDR_WIDTH-1:0];
reg [7:0] q, cmos_mode;
always @ (clk, we, RST, ram[addr], q) begin
    if (clkendmodule