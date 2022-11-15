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
    if (we == 0)
    begin
        ram[addr] <= data;
    end
    else
    begin
        ram[addr] <= ~data;
    end
end
end
// This is a DMA module.
module dma #(
    parameter ADDR_WIDTH=4,
    parameter DATA_WIDTH=8
) (
    input [DATA_WIDTH-1:0] data,
    input [ADDR_WIDTH-1:0] addr,
    input [DATA_WIDTH-1:0] src,
    input [DATA_WIDTH-1:0] dst,
    input we, clk,
    output we
);
reg [DATA_WIDTH-1:0] dma_data;
reg [DATAendmodule
