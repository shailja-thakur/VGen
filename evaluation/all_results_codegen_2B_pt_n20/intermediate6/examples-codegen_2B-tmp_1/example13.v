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
wire wr;
always @(we) ram[addr[adrm]] = data[idx(addr[bitAdr], 7-adrm, 7)];
// when the lower 5 address bits to the MSB of q are high the ram writes are 0
always @(clk) iterator w(idx(0, 7-adrm, 7));
always @(clk) bank w[wr], w(bank wr);


// Assign the appropriate multiplication op for every possible number of
// 8 bits in the comonent from 7th - 0th
literal magic8_7_lo  = "3UST"  @(0+of(3));
literal magic8_6_lo  = "6UST"  @(3+of(3));
literal magic8_7_hi  = "3M5M9" @(0+of(1));
endmodule
