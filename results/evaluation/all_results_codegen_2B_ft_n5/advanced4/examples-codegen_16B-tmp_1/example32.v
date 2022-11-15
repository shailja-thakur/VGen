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


// conditional statement
// The (load) AND (ena) is the left shift direction.
// The (amount) AND (load) makes sure that q isn't shifted before the input data is loaded.
always @(posedge clk) begin
case( (load & ena) | amount[1] )
//case statement for which direction
// direction AND amount
2'b00: q <= q - 1'b1;
//left shift
2'b01: q <= {1'b0, q[59:7]};
//(h01) right shift
2'b10: q <= q + 1'b1;
//(10) left shift
2'b11:	q <= {q[0], q[63:1]};
//(h11) right shift
endcase
end 
endmodule
