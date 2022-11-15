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
// always @(posedge clk, posedge reset)
// if(reset) begin 
assign feedback_value=^r_reg;
assign r_next= (r_reg[4:2] ^ r_reg[0]) ^ feedback_value;
// add a jolt to the output to prevent synchronization and to allow
// for seamless output array definition.
assign q[0]=r_reg[0];
assign q[1]=r_reg[1];
assign q[2]=r_reg[2];
assign q[3]=r_reg[3];
assign q[4]=r_reg[4];
always @(posedge clk)
if(reset)begin
r_reg<=5'b00000;
end
else begin
// r_reg<=r_next;
r_reg<=5'bend
endmodule
