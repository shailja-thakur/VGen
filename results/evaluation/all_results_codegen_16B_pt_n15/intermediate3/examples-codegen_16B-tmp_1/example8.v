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
// register logic
assign q = r_reg;
lut4 l1 ([0:3]), l1_a [4:7], l1_b [8:11], l1_d [12:15];
lut6 l2_a1 [16:19], l2_a2 [21:23], l2_a_d [25:28], l2_b_d [30:33], l2_d [35:38], l2_unkn [41:44];
lut6 l2_b1 [48:51], l2_b2 [54:55], l2_b_d2 [59:62];
always @(posedge clk) begin
  case (l1_z)
    (2,0,0,0,5) => l1_a[4] 
    (0,0,0end
endmodule
