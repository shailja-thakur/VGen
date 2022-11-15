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



version 3

// signd_adder input 
  //a 76 
  //b 52 
  //s 78 
  //overflow c

signal signd_adder:a;
signal signd_adder:b;
signal signd_adder:s;
signal signd_adder:overflow;
end

architecture behavior of signd_adder is
{ (* is a user signal *) 
before is: 
  signd_adder.a <= 83;
  signd_adder.b <= 83;
  signd_adder.s <= 86;
  overflow <= a < b;
after is: 
  signd_adder.a <= 83;
  signd_adder.b <= 83;
  signd_adder.s <= 83 + 85;
  overflow <=endmodule
