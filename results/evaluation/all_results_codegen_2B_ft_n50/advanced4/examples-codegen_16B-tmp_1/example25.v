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
	begin
	if (load == 1 && ena == 1)
	q <= data; //when load is high, prevent q from the data from being loaded
	else if (ena == 1)
		/* below if conditions prevent any extra bits from showing up if not necessary */
	case (amount)
	2'b00: q <= q << 1;
	2'b01: q <= q << 8;
	2'b10: q <= q >> 1;
	2'b11: q <= q >> 8;
	endcase
	end
end //enclosing of always
endmodule
