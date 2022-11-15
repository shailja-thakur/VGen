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


reg shiftlevel {1'b0; bit}; // shift level detected.
signal shifted; // when shifter detects shift, this signal is high
signal loadready; // when shifter detects shift, this signal is high

always @(posedge clk) 
begin
    // This begins the logic of how this module actually operates.
    shiftlevel <= load;
    shifted <= (ena & !shiftlevel);
    ena <= ena and !shiftlevel; // shifter keeps one bit per clock cycle.
    if (ena and !shifted)
        q <= data[amount];
    
end
// Enabling the shifter after each load with it's period set to 010 controls 
// which level the shifter generates. Actualize shitter state by rising a signal.
always @(posedge clk) 
begin
    // This begin runtime suppor of whatend
endmodule
