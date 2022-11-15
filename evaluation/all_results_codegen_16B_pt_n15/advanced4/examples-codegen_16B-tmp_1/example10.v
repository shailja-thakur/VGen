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

    if (ena && load)
	    q = data;
    else
    {
	    reg offset = (amount > 1)?8:1;
	    int i = 0;
	    int j = 0;
	    if (amount > 1) i = 64-amount*offset;
	    if (amount < 1) i = data+amount-1;
	    for (j = 0; j < offset; j++)
		  {
		      if (j < 1 || 8 < j)
			  // converting [7:0] to [63:61] and [00] to [62].
			  if (%amount==1) q[i-1+j] = q[i-1];
			  else q[i-1+j] = %result;
		  }
    }
endmodule
