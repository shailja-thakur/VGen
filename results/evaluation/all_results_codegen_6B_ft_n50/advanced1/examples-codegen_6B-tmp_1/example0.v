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


genvar i;
for (i=0;i<8;i = i+1) begin:loop
	wire [3:0] t1 = {a[i],b[i]}; 
	wire [3:0] s1 = {t1[2],t1[1],t1[0],a[i]};
	wire [3:0] t2 = {b[i],a[i]}; 
	wire [3:0] s2 = {t2[2],t2[1],t2[0],b[i]};
	assign s[i] = s1[3]^s2[3];
	//s[i] = s1[3]*s2[3];
	assign t1[3] = a[i]&b[i];
	assign t2[3]end
endmodule
