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


always @ (posedge clk) begin
	if(ena && load)
	// load shift register with initial value when the ena signal is high.
	q <= data;
	else if (ena && amount != 2'b0)
	// shift the register when ena is high, otherwise don't change it.
	begin
	case (amount)
	2'b00: q <= q << 1;
	2'b01: q <= q << 8;
	2'b10: q <= q >> 1;
	2'b11: q <= q >> 8;
	default: q <= q;
	endcase
	end
	else
	// Properly shutdown all ports on reset.
	begin
	q <= 64'h00000000;
	end
end
endmodule
