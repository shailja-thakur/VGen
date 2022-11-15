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
// assign the ram value at address addr to q[7:0]
always @(posedge clk)
begin
if(we)
ram[addr] <= data;
// writedata *always* is 1, so what the code actually writes is the ram[addr][7:0], where r='0', S is the selected ram index, and x[7:0] is the data
q <= ram[addr][7:0];
end
endmodule
