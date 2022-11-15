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



wire signed [8:0] op1; 

// check b bit before loop
wire signed [7:0] a0b, upper;

assign a0b = a[7] ? {1'b1, a[7:1]} : {1'b0, a[7:0]};
assign upper = {{2{a[7]}}, a[7:0]};

assign op1 = a0b + upper;
always @(*) begin
	if(op1[8] == 1'b1) 
	begin
	s[7:0] = sum;
	overflow = 1;
	
	end
	// tc adjust overflow 
	else if(op1[7] == 1&&op1[7] == 0)
	begin
	s[7:0] = sum;
	overend
end
endmodule
