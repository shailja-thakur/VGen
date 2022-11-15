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
// assign the ram value at address addr to q[7:0];
// assign the ram value at address addr to q[15:8];
// assign the ram value at address addr to q[23:16];
// assign the ram value at address addr to q[31:24];
// when we is high, write data to ram at address addr
always @(posedge clk)
begin
if (we)
ram[addr] <= data;
else
q <= ram[addr];
end
endmodule
