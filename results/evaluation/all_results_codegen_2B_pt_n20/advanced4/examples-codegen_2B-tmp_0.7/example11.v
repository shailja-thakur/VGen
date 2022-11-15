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

    wire [63:0] tmp;
    assign q[63:0] = data[63:0];
    always @(posedge clk)
    begin 
        if (ena)
        begin
            q <<= amount;
        end
        if (load)
        begin
            if (amount == 1)
                tmp = q[63:0];
            else if (amount == 8)
                tmp = q[63:64];
            else
                tmp = q[63:32];
            q = tmp >> 1;
            if (amount == 1)
                q = q[63:0] << 1;
            if (amount == 8)
                q = q[63:32] << 1;
        end
    end
end
endmodule
