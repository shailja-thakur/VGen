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


always @ (posedge clk)
begin
	if (load)
	begin
	//	$display("advshift : loading %b into q in time %t", data, $time);
	//	$display("advshift : clk is %b at time %t", clk, $time);
	//	$display("advshift : q is %b at time %t", q, $time);
	//	$display("advshift : ena is %b at time %t", ena, $time);
	//	$display("advshift : amount is %b at time %t", amount, $time);
	//	$display("advshift : clk is %b at time %t", clk, $time);
	end
	
	if (ena)
	begin
	//	$display("advshift: enabling shift in time %end
end
endmodule
