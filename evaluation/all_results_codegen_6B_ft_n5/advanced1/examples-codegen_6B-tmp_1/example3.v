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



always @(*) begin
case(b) 
8'b00000001: s = a + {8'b00000000,b}; // a is the signed output, pure addition 

8'b00000000: s = a + {b,8'b00000000}; //b is the signed output, pure addition 
 // Technically 0+0=0 is unitary 1 but imposant it gets compiled away in verilog 

8'b10000000:s=a-{b,8'b00000001}; //subtraction

8'b10010000:s=a+{b,8'b00000010}; // addition

8'b100000000:s={b,8'b00000000}-a; //reverse of subtraction 
//{b,8'b00000010} is arbitrary value of maximum magnitude of b and maximum magnitude of a
//magnitudeend
endmodule
