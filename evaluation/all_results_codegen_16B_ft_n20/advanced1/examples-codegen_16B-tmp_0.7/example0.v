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


reg [8:0] sum;
reg sign;
reg of1,of2;

always @(a or b) begin

if (a[7]==b[7])
begin
of1 = a[7];
sum = a[7]?a[6:0]:~a[6:0] + b[6:0];
end
else
begin
of1 = a[7];
sum = a[7]?8'b0 - b[6:0]:b[6:0] - 8'b0;
end


if (sum[8]==1) begin
of2 = 1;
sum = sum[7:0];
end
else begin
of2 = 0;
sum = sum[7:0];
end

end
assign s = sum;
assign overflow = of1 || of2;
endmodule
