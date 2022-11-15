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


// The shift value is not pipelined to in any way, so if the data is recieved out of the &Data port
// at exactly the same time when a shift is started, the shift will fail.
reg [63:0] shift_out_reg = load?'0':'';
// remember the shift registerever, since tuple de-sequencer/pipeline may be active.
always_comb
begin
  if (load) $dumpfile("shiftersim_small.vcd");
  if (ena) q = shift_out_reg;
end
endmodule
