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

 assign s[7] = s8;
 assign s[6] = s7;
 assign s[5] = s6;
 assign s[4] = s5;
 assign s[3] = s4;
 assign s[2] = s3;
 assign s[1] = s2;
 assign s[0] = s1;
 assign overflow = aof_s && bof_s;

// Add operations of one by one

always @ (a[0:0], b[0:0], s[0:0])
 begin 
	case(s[0:0])

// define the values of the adder switches
	2'b00:
	 begin
	 s10 = s[0] + b[0];
	 s11 = s[1] + b[1];
	 s12 = s[2] + b[2end
end
endmodule
