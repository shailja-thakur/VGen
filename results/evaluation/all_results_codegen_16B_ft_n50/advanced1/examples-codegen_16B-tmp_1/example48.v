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


assign s = (overflow) ? a + b : (a + b);
assign overflow = ((a[7] == 0) && (b[7] == 1)) 

//assigning s output values to this array may hinder the correct operation of the adder having a bus width of 8 bits and 
//however it reduces the space complexity of this code by ~8 - from ~9
//assign s[7] = (overflow) ? 1 : 0;
//assign overflow = (overflow) ? 1 : 0;
//If you want to see the math used to develop this code graphically uncomment this line

// The full program statement is a basic simulation program, which is described in the lab report. 

// Edits may be needed.

// Please Note: The assignment statements within the claer blockTAGE may not (as of yet) compile or performendmodule
