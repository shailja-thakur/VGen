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
if (we && !clr)
begin
ram[addr]=data;
end
q = ram[addr];
// clr, load all of the ram values to 0
if (clr)
begin
for(int i=0; i<2**ADDR_WIDTH; i=i+1)
begin
// Initialize all of the RAM to be a "zero" power state
ram[i]=0;
// If there is a "1" bit, then the state is powered on
if (i[ADDR_WIDTH-1])
begin
ram[i]=0;
end
end
end
end
endmodule
