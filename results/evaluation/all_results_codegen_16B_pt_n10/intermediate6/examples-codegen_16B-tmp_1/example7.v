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
always @(posedge clk) begin
    if (we) begin
        ram[addr] <= data;
        q <= ram[addr];
    end
end


`define FAST_MEM 0

system_tb_macros:

module logic FAST_MEM;
#( .FAST_MEM(FAST_MEM) );

module logic FAST_MEM_BIT;
#( .FAST_MEM_BIT(FAST_MEM_BIT) );

module logic FAST_MEM_EN;
#( .FAST_MEM_EN(FAST_MEM_EN) );

module logic FAST_MEM_ADDR;
#( .FAST_MEM_ADDR(FAST_MEM_ADDR) );

module logic FAST_MEM_DATA;endmodule
