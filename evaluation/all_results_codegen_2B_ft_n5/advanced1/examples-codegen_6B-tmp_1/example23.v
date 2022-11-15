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



// NETSim representation of the signed adder.
// It contains a module instance of a.
// At high time, the most significant bit of a is connected to the lower switch output.
// The sum of a and b is displayed at high and low time.
 

module signed_adder_tb;
 
 // Define the inputs and output of the signed adder
 reg[7:0] a;
 reg[7:0] b;
 wire[7:0] s;
 wire overflow;

// Initialize DUT Inputs
 
 initial
 fork
 a = 0; b = 0; //initialize both the inputs at time 0
 #100 a = 7; b = 7; //at time 100, assign the inputs to + -ve numbers
 #200 $finish; //at time 200, output is displayed at total time 300
 //at time 300, output isendmodule
