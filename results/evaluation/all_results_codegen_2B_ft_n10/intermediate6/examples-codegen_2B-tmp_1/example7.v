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
integer i=0 ;
always firstbe = ~clk;
always asynchronous posedge rst or negedge firstbe
begin
if (rst==1'b1)
begin
for (i=0;i<2**ADDR_WIDTH-1; i=i+1)
ram[i]=0;
q=0;
end
else if (we==1'b1)
ram[addr]=data;
end
endmodule
