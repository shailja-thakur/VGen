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
assign ram(q,not we,clk,data) [0..DATA_WIDTH-1];
assign q [3:0] = ram(clk<<0,we,sclk);

// logical operation:
// shift right 1 bit
// mask out all bits after the done bit
// test done bit
// set the part done bit of the result
// shift back 1 bit
// set the done bit of the result
assign q = NOT(q<>0b00100101><%=done_mask[0]<<5));
assign q = NOT(q<>0b0<<3);
assign q = NOT(q<>0b10010100><%=done_mask[1]<<5));
assign q = NOT(q<>0b1<<1));
assign z = q==0b0;
//andendmodule
