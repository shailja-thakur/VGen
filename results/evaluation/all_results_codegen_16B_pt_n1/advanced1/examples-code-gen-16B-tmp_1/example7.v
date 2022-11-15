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

    wire [15:0] s_unsigned = a + b;
    reg [7:0] s; 
    assign s = s_unsigned[7:0];  

    reg overflow; 
    always@(posedge a, posedge b)
    begin
    //The most significant bits of a and b are low and the most significant bit of s is high
        if(s_unsigned[7] == 1'b0 && s_unsigned[15] == 1'b1)
        begin
            overflow = 1; 
        end  
        //The most significant bits of a and b are high and the most significant bits of s is low
        else if(s_unsigned[7] == 1'b1 && s_unsigned[15] == 1'b0)
        begin
            overflow = 1; 
        end
        else 
        begin
            overflowend
end
endmodule
