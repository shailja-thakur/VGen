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


circu 20
asm
    rlc	pc,3
    rlc	rx,7
    dec	pc
    ja	b_wrapper
    dec	rx
    bra	c_wrapper
b_wrapper:
    inc	rx
    ini	data,rx
    inc	pc
    rlc	pc,-2
    rra	d,6	// 61?
    rih	e,0
    sbrc	d,20
    brcc	check_data1
    di
    tbp	data,40
    sbrs	d,4
    sbrc	d,6	// 61? Muxed with rra.
    brcc	check_data2
    beq	en
    rrc	pch
    t1b	clr	pch,0	// div by 10
    j	en1endmodule
