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
    r_reg = 1'b0000;
    q = r_reg;
    r_next = r_reg ROR 2;
    r_reg = r_reg ROR 2;
    r_next = r_reg ROR 5;
end
// Every clock cycle write states r_reg to increment by 1 even if all inputs are high
wire [31:0] v_reg;
feedback_index = 0;
// A similar sequence as above for q
initial begin
    r_reg = 1'b0000;
    q = r_reg;
    r_next = r_reg ROR 2;
    r_reg = r_reg ROR 2;
    r_next = r_reg ROR 5;
end;  
always @(posedge clk) begin
    v_reg = r_reg;
    r_regend
endmodule
