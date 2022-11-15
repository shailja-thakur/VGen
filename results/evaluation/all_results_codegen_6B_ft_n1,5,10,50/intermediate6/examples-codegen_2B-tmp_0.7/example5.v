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
always @(we) begin
    if (clk == 1) begin
        ram[addr] <= q;
    end else begin
        q <= ram[addr];
    end
end
// when we is low, do nothing
always @(posedge clk) begin
    if (we == 1) begin
        ram[addr] <= q;
    end
end
endmodule
