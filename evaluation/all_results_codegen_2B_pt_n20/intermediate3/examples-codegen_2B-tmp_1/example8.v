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
always @(posedge clk)
    w(r_reg != 0);
    if (reset) begin    
        r_reg = 1'b1;
        if (w(r_reg > 3) && w(r_reg < 4) && (r_reg==4)) r_next = r_reg;
        else r_next = r_reg ^ 0x4;
    end else
        r_next = r_reg;
    if (r_reg==4) r_reg = 0'b1;
    else r_reg = r_reg + 1;
    r_next = r_reg ^ r_next;
    q = r_reg
end
);
// This provides stimulates the verify_signal test, but that
// is only a test_bench run. It isn't needed generally
module m(input clk, input reset,endmodule
