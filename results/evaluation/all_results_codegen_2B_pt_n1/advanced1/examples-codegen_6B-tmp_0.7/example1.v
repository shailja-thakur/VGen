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


// a signed overflow occurs when the most significant bits of a and b are low and the most significant bit of s is high
// a signed overflow may also occur if the most significant bits of a and b are high and the most significant bit of s is low
// The order of addition of the two inputs is important. 
// Since the unsigned overflow is first calculated, the result is added to the sign of the inputs. 
// So the addition of the two inputs s and the result of the addition is added to the sign of the inputs. 
// The sign of the inputs is the sign of the most significant bit of the inputs.

always @(posedge clk) begin
    if (ws_enable) begin
        s <= a + b;
    end
    if (w_enable) begin
        s <= b + a;
    end
    if (r_enable) begin
        if (overend
end
endmodule
