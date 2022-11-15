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


signed_adder(a,b,s,overflow);

// The output s is the sum of a and b. 
// The output overflow is the signed overflow of a and b.

// The signed adder accepts multiple inputs and multiple outputs. 
// The inputs are provided as array a, b, and s. 
// The number of inputs is given in the num_inputs parameter. 
// The outputs are provided as arrays a, b, s, and overflow. 
// The number of outputs is given in the num_outputs parameter. 
// The sizes of a, b, s, and overflow are all num_inputs. 

// The signed adder accepts the following parameters: 
// num_inputs is the number of inputs, in this case 2 
// num_outputs is the number of outputs, in this case 4 
// a is an arrayendmodule
