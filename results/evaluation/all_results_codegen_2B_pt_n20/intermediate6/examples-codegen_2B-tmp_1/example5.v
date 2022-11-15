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
always@* bus ram[q]; begin
    clk <= clk;
    if (we == 0) begin
        data <= data;
        addr <= addr;
    end
end
// CLK# in DATA#
// ram returns the data[7:1] at address ram[addr]
// clk is the clock clock on ram when addr != 0
// addr is the address to read
wire [DATA_WIDTH-1:0] data;
reg ram [2**DATA_WIDTH-1:0];
wire addr;
mem (
    assign mem_out: ram[addr:ADDR_WIDTH] = ram[addr],
    mirror,
    addr
);
always@* begin
    if (((clk & WE_MASK) == 0) || (addr & DRAM_MASK) == 0) begin
        end
end
endmodule
