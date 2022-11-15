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


module main ()
  // Inputs
	clk, load, ena, amount, data;
  output [63:0] q;
  // Outputs
  reg [63:0] q;

  initial begin
	  // Convert inputs to registers
	  reg [63:0] r;
	  for (i = 0 to 63) begin r[i] = $ff << i; end
	  r[1] = ena;
	  if (load == '1') r[0] = $ff;
	  else r[0] = data;
	  if (en == '1') begin
		  // Shift data left
		  for (i = 2 to 63) r[i] = r[i-1] << 1;
		  q = r;
	  end
	  else begin
		  // Shift data rightend
end
endmodule
