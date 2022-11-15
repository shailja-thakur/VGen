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

 reg [63:0] shifter_right;
 reg [63:0] shifter_right_data_temp;
 reg [63:0] shifter_left;
 reg [63:0] shifter_left_data_temp;
 
 initial begin
 
 shifter_right = 64'b0; // initially done -- here always 0
 shifter_left = 64'b0;
 q = 64'b0;

end

always @ (posedge clk)
 begin
 case(amount) // Decide which part of data to shift.
 2'b00:begin // left shift
 shifter_left_data_temp = data; // copy data to temp
 #(shift_bits-1) shifter_left = shifter_left_data_temp << 1; // concatenate temp with shifted 8 bit data
 q = q >> 1;
 shiftend
endmodule
