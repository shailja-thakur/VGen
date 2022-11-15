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
always @(posedge clk) begin
    if (reset) begin
        r_reg = 0x00;
        r_next = 0x00;
    end else begin
        r_reg = r_reg << 1 | IF (q[3] == 0x00, 1, 0);
        r_reg = r_reg << 1 | IF (q[2] == 0x00, 1, 0);
        r_reg = r_reg << 1 | IF (q[1] == 0x00, 1, 0);
        r_reg = r_reg << 1 | IF (q[0] == 0x00, 1, 0);
        r_next = r_reg >> 4;
        feedback_value = r_reg & 0x0F;
        r_reg = r_reg << 1;
        q[0] = IF (r_end
end
endmodule
