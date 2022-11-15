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


reg signed [31:0] sum; 
reg [7:0] ov_reg; 

always @ (posedge previous_1 ) begin 

// Reg addresses and initializations
sum <= 0; 
ov_reg <= 0; 

// Bitwise addition triggered from the previous posedge of the Add_1
// 1. Add the result of the + with - previous_1 result and see if there is overflow and whether the overflow is two bits' complement
sum <= summation; 
if ({overflow, answer[15:8]} == 0) begin
// Here if the addition answer is zero then the sum may be two accumulated digits.

end // end of else-case
else begin
// Here correct addition happened.
overflow <= 0; 
end // end of else
sum1 <= sum;
sum <= 0;
end // end of always



alwaysend
end
end
endmodule
