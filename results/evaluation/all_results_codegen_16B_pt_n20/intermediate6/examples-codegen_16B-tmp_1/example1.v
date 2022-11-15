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
always @(posedge clk)
begin
    if(we)
    ram[addr] <= data;
end

// The RAM responder
module responder #(
    parameter ADDR_WIDTH=6,
    parameter DATA_WIDTH=8
) (
    input [DATA_WIDTH-1:0] data,
    input [ADDR_WIDTH-1:0] addr,
    input rdy, clk
);
reg [DATA_WIDTH-1:0] resp;
wire [7:0] resp_data;
always @(posedge clk)
begin
    if(rdy) // read data from ram associated with addr
    resp <= ram[addr];
    else // if the ready input is low, return data from last write
    resp_data <= resp;
end

assendmodule
