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


#1 enable overflow detection
always @(posedge clk) begin 
    if(flip_flop) out_output <= s_false_neg(a[7:0] + b[7:0]);
    else out_output <= a[7:0] + b[7:0];
    if((a[6:0] + b[6:0]) & a[6:0] & b[6:0])  out_output <= overflow;
end

always @(posedge clk) begin 
    if(flip_flop) in_input <= a[7:0];
    else in_input <= b[7:0];
end
*/

public class AddTwoRegister 
{
    public static void main(String[] args) {
        SignedRightShift int850_adder_v3 = new SignedRightShift();endmodule
