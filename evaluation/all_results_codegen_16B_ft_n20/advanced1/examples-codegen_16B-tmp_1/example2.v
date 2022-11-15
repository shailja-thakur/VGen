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


reg [7:0] s;
reg of1;
reg [7:0] temp_overflow; 

always @ *
 begin
 
 if({(~a[7]),a[7:0]} < {(~b[7]),b[7:0]})
 begin
/*
 assign s = 8'hff;
 assign of1 = 1'b1;
 assign temp_overflow = {1'b0,a[7:0]}+ {1'b0,b[7:0]}+1;	// add {2's complement of a,b}+1 => temp_overflow = {1'b1,temp_overflow}*2 = {2's complement of 1,temp_overflow}*2
*/
 assign s = ~b[7:0] + a[7:0] +1;
 assign of1 =end
end
endmodule
