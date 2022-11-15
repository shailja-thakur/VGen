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
always @(*) begin
    if (reset == 1) begin
        r_reg[0] = 1'b0;
        r_reg[1] = 1'b0;
    end
    else begin
        r_next = r_reg ^ feedback_value;
        r_reg = r_next;
        // for the output q
        q <= r_next[4];
    end
end

// Testbench
module lfsr_testbench()
    // input clk, inputs reset, outputs q
    input clk, inputs reset, outputs q;
    reg [4:0] r_checkout;
    always @(*) begin
        if (reset == 1) begin
            r_checkout = 0;
        end
        else begin
            r_checkout = r_reg;
        end
        // for the output q
end
endmodule
