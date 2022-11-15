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


// The 6'b01010101 data pattern is used as a test pattern.
// If the register (or data) to be shifted is updated during the shift or load cycle
// the able will be result in future shift cycles producing an incorrect result.

always @(posedge clk,
       negedge load)
begin
    // The X output register data is updated when ena is high
    if (load)
    begin
        if (ena) begin
            if (amount == 1)
            begin
                X <= data[63:0];  // shift by 1 bit
                enable_right = 1;     // shift by 8 bits now
            end
            else begin
                enable_right = 0;
                X <= data[63:0];  // shift by 8 bits
            end
        endendif
    end
    if (ena) begin
        if (enableend
end
endmodule
