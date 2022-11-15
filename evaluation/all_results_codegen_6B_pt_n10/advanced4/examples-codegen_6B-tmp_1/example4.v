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




// Classic PLC functionality.
// 1'b0 loads the shift register from pin m and 1'b0 resets it.
// 1'b1 loads the shift register from pin m, 1'b0 and 1'b1 cause a shift.
signal mload, clk, load, ena, ma[2:0] loadpin;

// 2'b0 and highest threahold of output bit is 0;
// 5'b0 and highest threahold of output bit is 1.
// On mone pin, threshold values are for rom 1'b0, with the next
// synchronization occurs at 31'b1.
signal outthreshold0,outthreshold1,mclr,loadbit;
Contsignal fclk="clk", regsp = "reg";
reg stdout[] = {
            16'b0, 16'endmodule
