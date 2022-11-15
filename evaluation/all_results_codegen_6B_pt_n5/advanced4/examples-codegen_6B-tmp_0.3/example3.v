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


// The following code implements the shift register.
// The register is initialized with the value of the input data.
// The register is shifted by the amount specified by the amount field.
// The value of the register is written to the output.
always @(posedge clk)
begin
  if (ena)
    q <= data;
  else
    q <= data >> amount;
end

// The following code implements the synchronous load.
// The register is loaded with the value of the input data.
// The register is shifted by the amount specified by the amount field.
// The value of the register is written to the output.
always @(posedge clk)
begin
  if (load)
    q <= data;
end

endmodule
