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


always @ (posedge clk)
	begin
	if (load) 
	 q <= data; // lits the register with input.
	else if (ena)
	 begin
	case(amount) // chooses operation to carry out on selected item.
	 2'b00: q <= {q[62:0], 1'b0}; //lessthan 1, do nothin.
	 2'b01: q <= q << 1; // 8 bit shift left.
	 2'b10: q <= q >> 1; // 1 bit shift right.
	 2'b11: q <= 64'd0; // 8 bit shift right.
	 endcase
	end
	else
	 begin
	 q <= q; // do nothing. 
	 end
	end
	endmodule
