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
// assign the ram value at address addr to q.
always @(posedge clk)
begin
case(addr)
6'h00: ram[6'h00] <= data;
6'h01: ram[6'h01] <= data;
6'h02: ram[6'h02] <= data;
6'h03: ram[6'h03] <= data;
6'h04: ram[6'h04] <= data;
6'h05: ram[6'h05] <= data;
6'h06: ram[6'h06] <= data;
6'h07: ram[6'h07] <= data;
6'h08: ram[6'h08] <= data;
6'h09: ram[6'h09] <= data;
6'h0A: ram[6'h0A] <= data;
6'h0end
endmodule
