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


// This is the register that is shifted.
reg q;

// This is the register that is loaded.
reg load;

// This is the enable signal.
reg ena;

// This is the shift amount.
reg amount;

// This is the shift register data.
reg data;

// This is the output of the register.
reg q_out;

always @(posedge clk)
begin
    if (ena) begin
        // Shift left by 1 bit.
        if (amount == 0) begin
            q <= data[63:0];
        end else begin
            q <= data[63:0] << 1;
        end
        // Shift right by 1 bit.
        if (amount == 1) begin
            q <= data[63:0] >> 1;
        end else begin
            q <= data[63:0end
end
end
endmodule
