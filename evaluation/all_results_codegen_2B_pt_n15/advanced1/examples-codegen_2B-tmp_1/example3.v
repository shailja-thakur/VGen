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


sign_adder ()
{
  // attach the SIGNEDNESS token to a.
  // assign to a dispatch line of sign addition and gate.


  // assignments
  // parse adjacent zeroes
  // assignment on input stream
  // assignment on output stream
  // polling and success detection
  // output persists
}



// define the expression of the task

signed_adder : gtic (+ 0x80, - 0x80) overflow : STAT (ax < 0x80), 
                  ax ;
 
// declare the input and output signals



signed_adder : signed_adder(a, b, s, overflow)  

// dbnc assembly line
signed_adder : 
  ax < 0x80    => "15 counter", 
  ax == 0 => 
    ax < 0x80 => "4 duty complete status cycle", 
endmodule
