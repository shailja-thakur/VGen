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
constraint
    clk.width = DATA_WIDTH or we.width + 2*addr.width;
    clk.ready = we & (1 << (DATA_WIDTH-1));
    we.ready = clk;
    we.type  = ram_we_type(we.type|ram.we);
endmodule
