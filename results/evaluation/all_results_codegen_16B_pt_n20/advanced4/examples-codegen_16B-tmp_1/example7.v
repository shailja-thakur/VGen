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


reg [63:0] q;
// The shifter will be enabled by selecting ena high.
// ena is specified by sending a clk between 0 and 1,
// and then quiting before a clk of 1.
always
#0 {
  if (ena) begin 
    // Hightogehter /Divider Register selects the scale of the output Q.
    // Loadthe shift register selected by the selected amount to data.
    q = data;
    // Figure out the desired direction of the shifts, and select the direction byte.
    q = q[63:62] +
      q[61:56]  +
      q[55:48]  +
      q[47:40]  +
      q[39:32]  +
      q[31:24]  +
      q[23:16]  +
      q[end
endmodule
