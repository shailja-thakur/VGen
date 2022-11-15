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



// Design the two-step method for signed addition

// Step1: First the output nibbles are assigned a signed value based on the significand values. Explain the math.
// Fix the integers a and b, and assign result as explained in the problem statement.

// Step2: It gets numbers in unsigned format, and then writes the output of step 1 to another unsigned number (without any sign bit), thus converts it in to signed format.

// Resulting in the overflow.



reg [6:0] a_ordered[7:0];
reg [6:0] b_ordered[7:0];
reg [7:0] numb_1;
reg [7:0] numb_2;
reg overflow_2 = 1'b0;
reg new_numb_ordered, all_overflow_holder; // for testing overflow of the new number generated based on second stependmodule
