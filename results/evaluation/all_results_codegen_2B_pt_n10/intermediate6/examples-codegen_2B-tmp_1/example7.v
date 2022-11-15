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
// assign the ram value at address addr to q when clk is low
always @(posedge we)
    ram[addr[7:0]].q <=
        (we?ram[addr[7:0]]:ram)
            [(DATA_WIDTH-1:0) + (7:0)];
reg when_ce;

always_comb edge clk, q;
initial begin
    when_ce <= 0;
end
endmodule
