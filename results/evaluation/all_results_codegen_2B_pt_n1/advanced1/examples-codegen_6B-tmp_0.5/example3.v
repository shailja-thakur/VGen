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


// The signed adder function will return a value of type [7:0]

always @(posedge clk or negedge rst) begin

if (rst) begin
    s <= 0;
    overflow <= 0;
end
else begin
    s <= a + b;
    if (a > 127) begin
        if (b > 127) begin
            s <= -2;
            overflow <= 1;
        end else begin
            s <= b;
            overflow <= 0;
        end
    end else begin
        if (b > 127) begin
            s <= a;
            overflow <= 0;
        end else begin
            s <= a + b;
            overflow <= 1;
        end
    end
end

end
endmodule
