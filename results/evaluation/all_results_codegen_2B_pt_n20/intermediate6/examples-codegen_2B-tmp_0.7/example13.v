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
assign ram[addr] = q;
// when we is high, write ram[addr] to address addr
// assign q to ram[addr]
assign q = ram[addr];
always @ (we, clk)
    if (clk == 1'b0) begin
        q(7'b0) = we(7'b0);
        q(7'b1) = we(7'b1);
        q(7'b2) = we(7'b2);
        q(7'b3) = we(7'b3);
        q(7'b4) = we(7'b4);
        q(7'b5) = we(7'b5);
        q(7'b6) = we(7'b6);
        q(7'b7) = we(7'b7end
endmodule
