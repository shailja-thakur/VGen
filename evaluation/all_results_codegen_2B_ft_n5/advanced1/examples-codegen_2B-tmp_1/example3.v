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


// Output before overflow flip flop belongs to y. 
// On always block, assign output to output y

// adder_1_in1 sets y to be the part after the sum.
// adder_1_in2 sets y to be the carry-out of the sum i.e. pin Y of the adder.


wire [7:0] adder_1_in1, adder_1_in2; 

// Output before overflow flip flop join y. When the output of the adder reduces to zero the flip flop will turn to output zero. 
// On always block, assign output to output y



endmodule
