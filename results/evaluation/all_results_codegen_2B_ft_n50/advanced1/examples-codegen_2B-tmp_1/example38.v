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



reg [7:0] s1;
always @ * begin 
if ({b[7],a[7]}) begin
s1= {b[7],8'b0};

end else begin
s1= a;

end
end

reg overflow1;

always @ * begin // The assignment to overflow must be within the always block
if ({b[7],a[7]}) begin
overflow1=1;
end

else begin
overflow1=0; 
end
end

assign overflow=overflow1;
assign s=s1;


endmodule
