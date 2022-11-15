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


// design a register with a 64 bit data field
reg [63:0] data;

// design a 64-bit arithmetic shift register, with synchronous load. 
// The shifter can shift both left and right, and by 1 or 8 bit positions, selected by amount.
reg [63:0] q;

always @(posedge clk) begin
    if(load) begin
        q <= data;
    end else begin
        if(ena) begin
            q <= q << amount | q >> (64 - amount);
        end else begin
            q <= q;
        end
    end
end

// test the register
assign q = data;

// ########### end of top level architecture ##########


// ########### begin architecture ##########
reg [63:0] data;
reg [63:0] q;

alwaysendmodule
