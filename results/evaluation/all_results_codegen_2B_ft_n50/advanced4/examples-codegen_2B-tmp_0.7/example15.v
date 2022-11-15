// Design a 64-bit arithmetic shift register, with synchronous load. 
// The shifter can shift both left and right, and by 1 or 8 bit positions, selected by amount.
module advshift(input clk,
input load,
input ena,
input [1:0] amount,
input [63:0] data,
output reg [63:0] q); 
// when load is high, assign data[63:0] to shift register q.
// if ena is high, shift q.
// amount: Chooses which direction and how much to shift.
// 2'b00: shift left by 1 bit.
// 2'b01: shift left by 8 bits.
// 2'b10: shift right by 1 bit.
// 2'b11: shift right by 8 bits.


reg load_n;
reg ena_n;
always @(posedge clk)
begin: enable_counter
// q <= data;
ena_n <= ena;
load_n <= load;
if (load)
q <= data;
else if (ena)
if (amount == 0)
q <= {q[62:0], 1'b0};
else if (amount == 2'b00)
q <= {q[62:48], q[47:0], 12'b0};
else if (amount == 2'b01)
q <= {q[48:0], q[47:1], 24'b0};
else if (amount == 2'b10)
q <= {q[0], q[63:1], 56'b0};
else if (amount == 2'b11)
q <= {q[63:end
endmodule
