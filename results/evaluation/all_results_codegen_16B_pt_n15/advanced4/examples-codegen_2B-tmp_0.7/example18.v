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


reg [63:0] r;
reg [63:0] s;
reg r;
reg s;

always @(posedge clk)
{
    r <= (load - 1) + ena;
    s <= r;
    if (ena) r = data;
}

always @(posedge clk)
{
    if (ena) {
        s <= (load - 1); 
        
        if (amount == 1) {
            q <= s;
        } else if (amount == 8) {
            q <= s;
        } else if (amount == 2) {
            q <= (s + 1);
        } else if (amount == 4) {
            q <= (s + 2);
        } else if (amount == 6) {
            q <= (s + 3);
        } else if (amount ==endmodule
