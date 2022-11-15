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
assign q = we ? data[addr] : 0;
// when we is low, read data from ram at address addr
// assign the ram value at address addr to q
assign q = we ? 0 : data[addr];
// when clk is high, increment addr by 1
assign addr[7] = we ? addr[7] + 1 : addr[7];
// when clk is low, increment addr by 1
assign addr[7] = we ? addr[7] : addr[7] + 1;
// when we is high, write data to ram at address addr
assign data[addr] = we ? data[addr] + 1 : data[addr];
// when we is low, read data from ram at address addr
assign data[addr] = we ? 0 : data[addr];
endmodule
