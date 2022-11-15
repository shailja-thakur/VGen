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
always @ (posedge clk or posedge reset)
begin
:
if (reset)
 r_reg [4:0] <= #1 5'b1011;
else 
 r_reg [4:0] <= #1 r_next;
end
assign q = r_reg;
// next register only depends on q[0] if the others are 0
assign r_next = (q[0]^q[2]^q[3]^q[4]) ? q[4:1] : q[4:1]; ;
assign feedback_value = (q[0]) ? r_reg[3:0] : (q[1:2]^q[4:3]); //if q[0]^q[1]^q[2]^q[3]^q[4]

endmodule
