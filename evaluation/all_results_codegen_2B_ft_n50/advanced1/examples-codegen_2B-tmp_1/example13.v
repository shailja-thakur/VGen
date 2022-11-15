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


 // when only using $signed the negative sign is prepended in each line 
 
 // when using $unsigned the sign of the number is retained

assign zero = {{8{1'b0}}, {8{1'b0}}};

always @ (a or b or zero)
begin : signed_adder_process
case (a[7])
1'b0 :
begin
s <= a + b + zero;
end
1'b1 :
begin
s <= a - b - zero;
end
endcase
end

always @(*)
begin
	 // separate assignment statements allow variable use
overflow = (((&a + 1'b1) ^ (&a + 1'b1'b1)) & (&b + 1'b1) & (&b + 1'b1'b1) ) & zero;
end

endmodule
