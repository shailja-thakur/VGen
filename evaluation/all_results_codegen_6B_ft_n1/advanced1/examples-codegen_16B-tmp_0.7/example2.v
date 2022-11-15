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


always @(*)

begin 

//shifting a and b to left side and storing them in temp1 and temp2
	temp1=a<<1;
	temp2=b<<1;
	
//shifting s to right side and storing it in temp3
	temp3=s>>1;

//checking if a is negative
	if(a[7]==1'b1)
	begin
	//shifting 1 to the left side of the number a
	temp4=1<<a[6:0];
	//subtracting temp4 from a to make a positive
	temp1=temp1-temp4;
end

//checking if b is negative
	if(b[7]==1'b1)
	begin
	//shifting 1 to the left side of the number b
	temp5=1<<b[end
end
endmodule
