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


always@(posedge clk)
begin 
	if (load) // only consider the case of shift based upon load
	begin 
 	 	if (ena) // only shift when ena is high 
 	 	begin 
 	 	case(amount) // amount of shift to be done based on no
	 	2'b00:begin // shift left by 1 bit
 	 	 	if(q[63]) // if q[63] is 1 then only shift left by 1
 	 	 	begin 
 	 	 	

 	 	 	 	q <= {q[62:0],data[63]}; //else shift left by 1

 	 	 	 	end
 	 	 	else
 	 	 	begin 
 	 	 	

 end
end
end
end
endmodule
