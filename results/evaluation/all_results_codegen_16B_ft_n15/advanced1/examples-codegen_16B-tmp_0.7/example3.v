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


// this is a standard 8-bit adder
wire [8:0] sum = a + b;

// two's complement adder
wire [7:0] sum_comp = ~(a + b);


// the sign of the sum
assign s[0] = sum[0];

// the carry out bit of the sum
assign s[7:1] = sum[7:1];

// the sum of the first two complement bits. 
assign s[7] = sum[7] | sum_comp[7];

// the overflow bit of the sum
assign overflow = (a[7] == b[7] && a[7] != sum[7]);



endmodule
