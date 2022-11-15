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
        q <= ram[addr];
    end
end
// This is a ROM module
module rom #(
    parameter ADDR_WIDTH=6,
    parameter DATA_WIDTH=8
) (
    input [DATA_WIDTH-1:0] data,
    input [ADDR_WIDTH-1:0] addr,
    input rst,
    output [7:0] q
);
reg [DATA_WIDTH-1:0] rom[2**ADDR_WIDTH-1:0];
// when rst is high, reset rom to all zeros
always @(posedge clk) begin
    if (rst) begin
        rom <= 0;
    end
end
// This is a RAM module
module ramendmodule
