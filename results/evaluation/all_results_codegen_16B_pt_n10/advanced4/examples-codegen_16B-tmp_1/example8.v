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




//attention.
(* KEEP, DONT_TOUCH, LOC = CONST[48])
#(clock reset)
#(normal port inst finish)

#(set registeres)
assign q = data[63:0];

#(set output)
assign reg[63:0] = q;
assign clk = !ena && clk;
#(end)






#(initial const)
const(int res0, int res1, int res10) #(0:1 bit mackerel)
    return 10;
// res0: 0,1,10

// res1: (!
//
// res10: (<)
// 0 bit: 1.1.1.1
// 4 bit: 1.8.0.0.9
// 8 bit: 1.2.3.6

endmodule
