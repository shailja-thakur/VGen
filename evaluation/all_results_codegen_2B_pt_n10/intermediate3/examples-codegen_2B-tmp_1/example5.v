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
parameter
loop_counter_ir = 0;
always @(posedge clk)
begin
    loop_counter_ir += 1;
    if (loop_counter_ir == 5)
        reset <==> 1;             
    if (loop_counter_ir == 15) {
        reset <==> 1;
        r_reg    <==> r_next;
        feedback_value == r_reg[3] || r_reg[2];
    } else {
        if (loop_counter_ir % 2 == 0) {

            r_reg[1] <== simd_carry_out or r_reg[0];
            r_reg[2] <== r_reg[1] || r_reg[1];
            r_reg[3] <== r_reg[2] || r_reg[2];
            r_end
endmodule
