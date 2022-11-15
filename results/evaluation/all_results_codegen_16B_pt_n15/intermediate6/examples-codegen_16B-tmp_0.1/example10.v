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
always @(posedge clk) begin
    if (we) begin
        if (addr[0] == 0) begin
            ram[addr[1]] <= data;
        end else begin
            ram[addr[1]] <= ram[addr[2]];
        end
    end
end
// return the value at address addr
// return the value at address addr + 1
// return the value at address addr + 2
// return the value at address addr + 3
// return the value at address addr + 4
// return the value at address addr + 5
// return the value at address addr + 6
// return the value at address addr + 7
// return the value at address addr + 8
// return the value at address addr + 9
// return the value at address addr + 10
// return the value at address addr + 11
// return the value at address addr + 12
// returnendmodule
