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


// Synchronous load register
reg [63:0] load_reg;

// Shift register register
reg [63:0] shift_reg;

// Enable signal
reg enable;

always @(posedge clk)
begin
    if (ena)
    begin
        if (load)
        begin
            load_reg <= data;
        end
    end
    if (amount == 1'b0)
    begin
        shift_reg <= load_reg;
    end
    if (amount == 1'b1)
    begin
        shift_reg <= shift_reg << 8;
    end
end

endmodule
