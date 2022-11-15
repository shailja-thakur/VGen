// Design a signed adder that adds two 8-bit 2's complement numbers, a[7:0] and b[7:0]. 

module signed_adder(input [7:0] a,
    input [7:0] b,
    output [7:0] s,
    output overflow
); 

// The numbers a and b are added to the output s. 
// assign the occurence of the signed overflow of a and b to the output overflow.
// a signed overflow occurs if the most significant bits of a and b are low and the most significant bit of s is high
// a signed overflow may also occur if the most significant bits of a and b are high and the most significant bit of s is low




// Design a 8-bit signed adder Sum[7:0] = a[7:0] + b[7:0]

// if the enable in the && statement is 1 then add else subtract. 

// If the ring counter has ticked the add and subtract counts just have been done and the output is passed to the final system
// Overflow is reset whenever the a or b are updated.

assign overflow = up_up_counter ^ up_down_counter;

// Set the most significant bit to 0 to represent a negative sign bit and set the least significant bit to 1 for a positive sign bit.

assign b_next = ((b[0] == 1'b0) ? b_out : ~b_out);
assign a_next = ((a[0] == 1'b0) ? a_out : ~a_out); 

//endmodule
