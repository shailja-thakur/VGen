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


reg signed [7:0] octect;

always @*
begin
fulfiller = 1'b0;
end

always @* 
begin
od = octect;
end

always @* 
begin 
if (a[7] == 1'b1 && b[7] == 1'b0) 
octect = - a + b;

else if (a[7] == 1'b0 && b[7] == 1'b1)
octect = a + - b; 

else if (a[7] == 1'b0 && b[7] == 1'b0)
octect = 8'b00000000; 

else if (a[7] == 1'b1 && b[7] == 1'b1)
octect = 8'bxxxxxxxx;

end


always @*endmodule
