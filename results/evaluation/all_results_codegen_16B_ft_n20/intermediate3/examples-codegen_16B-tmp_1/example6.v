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
// assign feedback value concatenated with 4 MSBs of r_reg to r_next
// assign r_reg to the output q
assign r_next = r_reg ^ (r_reg >> 2) ^ (r_reg >> 4);
always @ (posedge clk or posedge reset)begin
// check if the reset is active
if (reset) begin
// when reset is active, set the value to 1
r_reg <= 0;
// no output
q<=0;
end else begin
// if non-reset or active
r_reg<=r_next;
q<=r_next;

// only outputs bits that change
//if (q !== r_next) begin
//assign q = r_next;
//end else begin
// disable outputs
//q <= 0;
//end
end

end

endmodule
