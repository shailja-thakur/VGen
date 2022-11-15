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
    if(we)
        ram[addr] <= data;


// do the table lookup for 2 address width, it's pretty clever
reg [ADDR_WIDTH*2-1:0] entries;
tmp_1: flop {
    ram: entity ram [({2**(ADDR_WIDTH-1)+addr})-1:0] ;
    ram_reg: flop ram ;
    assign #3:0 {ram_reg} ;
    assign q = entries[addr*2];
}
// This is a Pipeline module with 2 stages which are pipelined
// as the result is splitted in two variables.
pipeline pipe A(ADDR_WIDTH = ADDR_WIDTH, DATA_WIDTH = DATA_WIDTH);
// The first one is the readendmodule
