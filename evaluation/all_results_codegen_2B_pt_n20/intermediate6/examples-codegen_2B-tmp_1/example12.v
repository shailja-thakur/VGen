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
assign q [6:0] = data = ram(addr, we) & 63;

wire [DATA_WIDTH-1:0] data;
wire [ADDR_WIDTH-1:0] addr;
wire [DATA_WIDTH-1:0] dat_i;
wire [ADDR_WIDTH-1:0] dat_o;
wire q;

always @(posedge clk)
    dat_i <= dat_i + 1;
    addr[dat_i] <= dat_o;
    data <= ram[addr[dat_i]];
endmodule
