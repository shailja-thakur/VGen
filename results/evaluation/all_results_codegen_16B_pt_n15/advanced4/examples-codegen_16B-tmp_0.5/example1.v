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


assign q = (data[63:0] << (amount*8)) | (data[63:0] >> ((64-amount)*8));

reg [1:0] shift_ena;
reg [63:0] shift_amount;
reg [63:0] shift_data;
reg [63:0] shift_q;

always @(posedge clk) begin
  if (ena) begin
    shift_ena <= amount;
    shift_data <= data;
    shift_q <= q;
  end
end

always @(posedge clk) begin
  if (ena) begin
    if (shift_ena == 1) begin
      shift_amount <= shift_ena;
    end
  end
end

always @(posedge clk) begin
  if (ena) begin
    if (shift_ena == 2end
end
endmodule
