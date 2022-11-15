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


//Turn a and b into two's complement form if these numbers are negative
assign b_of = {b[6:0],1'b1} + {b[7],1'b1} ;
assign a_of = {a[6:0],1'b1} + {a[7],1'b1} ;

always@(*) 
begin	
	if ({a[7],a[6:0]} < {b_of[7],b[6:0]})	
	begin 
	assign s = {a[7],a[6:0] - b_of[6:0]}; 
	assign overflow1 = 0;
	end	
	else 
	begin 
	assign s = {a[7],a[6:0] + b_of[6:0]}; 
end
end
endmodule
