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


always @(posedge clk)
    if (ena) begin
        if (load) q = data[amount];
    end
end

// design 8-bit compare logic.
module comp(input clk,
input [7:0] a,
input [7:0] b,
output reg [7:0] comp);
// if a and b are equal, then comp is low.
// if a and b are not equal, then comp is high.

always @(posedge clk)
    if (a == b) comp = 0;
    if (a != b) comp = 1;
end

// design a 64-bit arithmetic shift register.
module advshift_s7(input clk,
input load,
input ena,
input [1:0] amount,
input [63:0] data,
output reg [63endmodule
