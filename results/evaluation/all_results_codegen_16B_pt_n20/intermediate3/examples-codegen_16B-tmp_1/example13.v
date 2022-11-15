// Design a 5-bit maximal-length Galois LFSR with taps at bit positions 5 and 3
module lfsr( 
    input clk,
    input reset,
    output [4:0] q
); 
reg [4:0] r_reg;
wire [4:0] r_next;
wire feedback_value;
// on reset set the value of r_reg to 1
// otherwise assign r_next to r_reg
// assign the xor of bit positions 2 and 4 of r_reg to feedback_value
// assign feedback concatenated with 4 most significant bits of r_reg to r_next
// assign r_reg to the output q
always @(posedge clk or posedge reset)
begin
    if (reset = '1') begin
        r_next = 13'b0000;
        r_reg = 1;
    end
    else begin
        r_reg = r_reg xor 2;
        feedback_value = 2'b01;
        r_next = r_reg({4,3});
    end
end
// now assign the R_next = ALWAYS(CLK or RESET)
not q;
//% R_next'(q)--latch select between q and feedback value
export Q=q;
export RE=r_next.q;
endmodule
