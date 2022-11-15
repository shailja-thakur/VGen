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

    bool load = bool(load);
    bool carry_count_only = bool(!!(amount & 2) && !bool(ea));
    
    if (load) 
    { 
        #(64, 63) io [63:0] q = data [63:0];
        #(0) {
        if (ena) q = 0; 
        else if (amount == 0 || amount == 2) q = q << 1; //{ handled by synthesis;
        #}
        #(0) {
            for (int i = count ((~load) + 1); i > 0; --i) { 
                if (amount == 0 || amount == 2) q = q << 1; //{ handled by synthesis;
                #(64, 64) io [63:0] val = !load ? (amount == 2 && i == 1 ? 1 : 1)endmodule
