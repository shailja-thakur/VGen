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

  always@ DCOSC=1
    always@ lda = addr
    may @ lagg
      ena @ da = da + ena
            data[0] @ da[0] = data[63:0] @ q[63:0]
            lagg @ da[64:65] = 0b10010001
            load
            sleep(1)

  module shifter()
        load ya = 0
        ena @ clk = 1
        lagg @ ya[0] = 0b11111111

        forr(rep, 8)
            forl(rep, 8)
                for r in [8, 7, 6, 5, 4, 3, 2, 1]
                    for d in [7, 6, 5, 4, 3, 2, 1, 0]
                        data[r] @ q[d] = data[r] @ q[d]endmodule
