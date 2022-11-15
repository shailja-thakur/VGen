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
assign q [data[addr[7:0]]];
assign ram(ram_in) [addr[7:0], we, clk, q];
initial begin
    // Set the start address to 0x0000
    reset_value = 0;
    // Reset the RAM
    ram_in <= 0;
    // Start the RAM
    ram_in <= 1;
end
// When we is low, read data from ram at address addr 
// assign the ram value at address addr to q
assign q [addr[7:0]];
assign ram(ram_out) [addr[7:0], we, clk, q];
initial begin 
    // Write to RAM
    ram_out <= 0;
    // Start the RAM
    ram_out <= 1;
end
// If we is high, write data to RAM addresses starting from 0xendmodule
