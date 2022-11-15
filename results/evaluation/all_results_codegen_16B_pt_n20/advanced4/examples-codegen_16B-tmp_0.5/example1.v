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
reg [1:0] shift_amount;
reg load_ena;
reg ena;
reg [1:0] amount;
reg clk;
reg [63:0] data;
always @(posedge clk) begin
  if (load && load_ena) q <= data[63:0];
  if (ena) {
    q = q >> shift_amount;
    q = q & ((1 << amount) - 1);
  }
end

always @(posedge clk) begin
  if (load && load_ena) data <= q;
  if (ena) {
    shift_amount <= amount;
    load_ena <= ena;
  }
end

always @(posedge clk) begin
  if (ena) ena <= !load;
end
endmodule
