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

  always @(*output*) begin
       	if (load) {q <= data;}
    	else if(ena) {q <= ena;}
		else {*q <= 0x00;}//or more fixed value needed
  end
  
// convert 'just shifted' value ('q') into register value ('reg')
 




module shftreg<ty> (
	.CE( clk, 1), // CE signals the module that a clock edge occurs.
//	.load( load), // MUST set to 1 in constructor.
	.ena( ena),
	.data( data[63:0]),
	.q(q[63:0])
); 


// instantiation of shftreg
			// without load or ena force zero
#pragma HLS EPITECH

// instantiation of huge advshift
#pragma HLS INTERendmodule
