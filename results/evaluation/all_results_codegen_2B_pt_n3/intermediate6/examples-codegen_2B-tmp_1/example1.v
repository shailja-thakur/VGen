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
wire we;
assign q = data[(addr)wm]
// when we is low, read ram from   addr into q and increment the
// address
else assign ram[(addr)wm]=(data[(addr)wm])<<1
// when clk is true, increment addr
if (clk) 
    addr[(addr)wm]=(addr[(addr)wm])+1
else if (we) ram[(addr)wm]=ram[((addr)wm)+1]
endmodule
