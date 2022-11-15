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
    lst_mem [DATA_WIDTH-1:0] mem;
    we=0;

    if (addr[2] == 0)
    {
        mem[addr[0]:addr[1]]=dat;
        if (mem[addr[0]+1] != 0)
        clk=1;
    }
   if (addr[2+1] == 0)
        clk1=1;
endmodule
