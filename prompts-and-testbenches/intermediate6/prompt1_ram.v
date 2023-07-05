// This is a RAM module
module ram #( parameter ADDR_WIDTH=6, parameter DATA_WIDTH=8) 
(input [DATA_WIDTH-1:0] data, input [ADDR_WIDTH-1:0] addr, input we, clk, output [DATA_WIDTH-1:0] q);
reg [DATA_WIDTH-1:0] ram[2**ADDR_WIDTH-1:0];