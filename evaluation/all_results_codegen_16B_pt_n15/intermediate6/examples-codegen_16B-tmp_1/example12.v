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
    if(we) begin
        ram[addr] <= data;
        q <= ram[addr];
    end
end

reg [DATA_WIDTH-1:0] bus[32];


`default_gateway
module top(
    input we, clk,
    output [7:0] q
) #(
    parameter DATA_WIDTH=8,
    parameter ADDR_WIDTH=6,
    parameter DIST_WIDTH=4
) ();


// This is a ROM module: car
reg [DATA_WIDTH-1:0] car[{2**ADDR_WIDTH-1:0}];

module car #(
    parameter ADDR_WIDTH=6,
    parameter DATA_WIDTH = 8 //endmodule
