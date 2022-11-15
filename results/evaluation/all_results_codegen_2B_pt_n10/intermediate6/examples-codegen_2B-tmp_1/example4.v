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
// q is the result of a memory read
initial
{
  q = we[DATA_WIDTH-1:0] ? ~addr[DATA_WIDTH-1:0] : 0;
}
// when clk is high, advance the ram address
transition stateRAM {
  if (clk==0)
   addr[ADDR_WIDTH-1:0] = (addr[ADDR_WIDTH-1:0]+1) & 0x3FFFF;
}
// when clk is low
{ {we[DATA_WIDTH-1:0]==0 && r!=0, data[DATA_WIDTH-1:0] |= ram[addr[ADDR_WIDTH-1:0]] }
 //{we[DATA_WIDTH-1:0]==0 && r==0, data[endmodule
