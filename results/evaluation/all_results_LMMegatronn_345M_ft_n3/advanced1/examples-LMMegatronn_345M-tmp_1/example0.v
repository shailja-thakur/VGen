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

  wire [7:0] s_a = -a;
  wire [7:0] s_b = -b;
  wire [7:0] s_c = -c;
  wire [7:0] s_d = -d;
  wire [7:0] s_e = -e;
  wire [7:0] s_f = -f;

  assign s = a*b;
  assign overflow = a[15] ^ carry[15]; 
endmodule
