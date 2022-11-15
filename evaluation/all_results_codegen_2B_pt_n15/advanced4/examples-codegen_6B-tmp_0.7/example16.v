// Design a 64-bit arithmetic shift register, with synchronous load. 
// The shifter can shift both left and right, and by 1 or 8 bit positions, selected by amount.
module advshift(input clk,
input load,
input ena,
input [1:0] amount,
input [63:0] data,
output reg [63:0] q); 
// when load is high, assign data[63:0] to shift register q.
// if ena is high, shift q.
// amount: Chooses which direction and how much to shift.
// 2'b00: shift left by 1 bit.
// 2'b01: shift left by 8 bits.
// 2'b10: shift right by 1 bit.
// 2'b11: shift right by 8 bits.


// function advshift_en2(clk, ena, load)
//  mux_advshift mux;
//
//  always@(posedge clk or negedge ena)
//    mux.i <= load ? mux.a : ~mux.a;
//  end
//
//  mux.a <= advshift(mux.i, ena, load);
//
//  advshift(clk, mux.a, ena, load, mux.i);
//  end
//
//  always@(posedge clk or negedge load)
//    if (load)
//      q <= mux.i;
//  end
// end

module advshift_en(input clk,
input ena,
input load,
input [31:0] data,
output regendmodule
