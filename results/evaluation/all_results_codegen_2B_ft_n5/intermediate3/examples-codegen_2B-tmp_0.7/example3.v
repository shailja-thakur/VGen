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

assign q = r_reg;
always @(posedge clk)
begin
 if (reset)
 repeat(5) @(posedge clk);
 else
 begin
 r_reg <= r_next;
 end
end

// create the feedback value
bit7seg b7seg7(.sin(r_reg[2:0]),.cathode(r_reg[2:0]),.anode(r_reg[4:3]),.enable(feedback_value));

// create the next value
// for the next value, assign r_next = r_reg xor {r_reg[4],r_reg[3]} xor {r_reg[2],r_reg[4],r_reg[3]}
// and assign r_next[4] = r_reg[4]
assign r_next = r_endmodule
