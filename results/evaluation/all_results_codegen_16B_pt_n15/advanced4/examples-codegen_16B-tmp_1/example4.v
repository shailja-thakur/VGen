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




assign loadmsb = {!load};
assign load15bit = load {!loadmsb, 1'b0};

assign q = {data, !load};

reg [63:0] r = 0;
reg [1:0] op = 3'h0;
reg [15:0] temp = 0;
reg [1:0] amtr =0'b0;

always @[clock] begin
    if(ena && !load[0]) begin 
        #(Q ? 1'b0 : 1'b1) = amtr;
        #(Q ? 1'b1 : 1'b0) = lsab; 
        #(r) = (Q ? 2'b01 : 2'b10) + (r); 
    end else begin
        lt = op[2:0];
        saend
end
endmodule
