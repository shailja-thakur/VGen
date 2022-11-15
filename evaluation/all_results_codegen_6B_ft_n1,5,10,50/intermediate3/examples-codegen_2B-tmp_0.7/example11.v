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

initial begin
    r_reg = 1'b0;
    r_next = r_reg;

    feedback_value = (clk ^ reset) & 0x1;
end

// XOR the value of r_next with the feedback_value
// assign r_reg to the output q

always @(posedge clk) begin
    if (clk == 1)
    begin
        r_reg = r_next ^ feedback_value;
        q = r_reg;
    end
end
endmodule
