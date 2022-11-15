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
always @ (we, clk)
    if ( (clk == 0) && (addr[3:0] == 5) ) rst_n = 0;
    else if (not (we) && (clk == 1)) rst_n = 0;
    else if (addr[3:0] < 123)
        ram[addr[3:0]] = data;
            ram[addr[3:0]+1] = (data >> 8) & 0xFF;

initial    clk=0;
always @ (clk, we)
    if (clk == 0)
        rst_n = 0;
    else if (not (we) && Q == 1)
        Q=0;


assign w = read we;
assign w0 = not w;
assign h = read we;
assign h0 = notendmodule
