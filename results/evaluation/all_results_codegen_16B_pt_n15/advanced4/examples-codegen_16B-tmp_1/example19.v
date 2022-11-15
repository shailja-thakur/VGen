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


// mux the amount to decide which direction to go.
reg [3:0] shiftamt;
reg masked_load = 64'h00000000000000000000000000000001;

always@(posedge clk)
begin
 if (load)
 begin 
 shiftamt <= amount;
 q <= data;
 end
 else 
 begin
 q <= q;
 end
end

always@(shiftamt) 
begin
 if(|shiftamt)
 begin
 q[65 - shiftamt] <= masked_load;
 end
 else if(&shiftamt)
 begin
 q[63 - shiftamt] <= data[63 - shiftamt];
 end
 end
 endmodule`include"dff.v"
module d_ff_1bit(input clk,input reset,input regWriteIn, input decOut1b, input dIn, output regendmodule
