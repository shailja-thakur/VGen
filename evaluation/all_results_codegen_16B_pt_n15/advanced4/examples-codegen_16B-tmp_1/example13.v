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


reg flags;
reg rr, aa, ff;			// refresh registers
reg ww, zz, p0;

always @(posedge clk) begin
        if(!load && ena && !rr) rr = data;
        if(!ena) begin
                // Inverter aliasing 2'b0(refazer arrivando a 0)	
                if(amount == 2'b01) aa = ~aa;
                if(amount == 2'b10) ff = ~ff;
                if(amount == 2'b00) p0 = ~p0;
                if(amount == 2'b11) ww = ~ww;	
        end else begin
                // LET'S ALWAYS ENABLE FF AND PW
                flags = ena | ff | ~ww | ~p0 | ~rr;
        end
end
endmodule
