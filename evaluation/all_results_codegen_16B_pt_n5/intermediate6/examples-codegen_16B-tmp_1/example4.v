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
always @(posedge clk or we) begin
    ram[addr] <= data;
    q <= ram[addr]; end

// This is a ROM module
module rom #(
    parameter ADDR_WIDTH=5,
    parameter DATA_WIDTH=8
) (
    input [ADDR_WIDTH-1:0] addr, // address sensor takes
    input  w,      // write signal (GOOD write)
    input clk,     // clock
    output [DATA_WIDTH-1:0] rom,
    output [7:0] q // inverted rom value
);
reg [DATA_WIDTH-1:0] rom[2**ADDR_WIDTH-1:0];
always @(posedge clk or w) begin
    rom[addr] <= rom[addr];
    qend
endmodule
