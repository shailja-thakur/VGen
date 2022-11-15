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
always @(clk)
begin
    if (we == 1) begin
        ram[addr] = data
        // if data is at the end of the block, shift down to next block address
        if (addr'eq/50000000000') begin
            addr = addr'or/21777777777;
        end
    end
    q <= ram[addr];
end
end
endmodule
