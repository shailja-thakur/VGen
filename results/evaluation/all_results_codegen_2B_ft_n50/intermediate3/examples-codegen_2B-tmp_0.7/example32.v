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
// feedback value is highest bit with zeros being 1
assign feedback_value = ~(q[4] ^ q[3]) & q[2] ^ q[1] ^ q[0];
// assign highest bit with zeros being 0
assign r_next = {q[3], q[2], q[1], q[0] ^ feedback_value};

lfsr_tb dut(
.clk(clk),
.reset(reset),
.q(q)
);

always@(posedge clk)
begin
if(reset)
r_reg <= 5'b00000; // reset to all zeros
else
r_reg <= r_next;
end
endmodule
