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


// The number s is the sum of a and b. 

always @(posedge clk or negedge reset) // Reset the adder to 0
begin
    s <= a + b; 
    if (a > 127) // If A is less than 128, then add B to s
    begin
        if(b > 127) // If B is less than 128, then add A to s
        begin
            s <= a + b; 
        end
    end
end

endmodule
