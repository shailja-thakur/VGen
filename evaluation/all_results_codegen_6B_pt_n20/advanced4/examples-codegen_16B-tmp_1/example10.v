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


// DFF stage: part of pipeline stage 1
// Domain: 64-bit
// Area: combinational logic

reg [63:0] next_data;
//input registers in pipeline stage 1 

always @(posedge clk) // sequential block 
begin 

	if ((load) && (ena)) 
	begin
	// when load is high, assign data[63:0] to shift register 
	next_data <= data;
	
	end // END if (load && ena) 

else 
begin //ELSE

	next_data <= q;

end // END else 

// DFF to stage 1
q <= next_data; 

end //END always block


always @(load or ena or amount) //parallel block
begin

case (amount)
2'b00: 
q <=end
end
end
endmodule
