// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
parameter delay0 = 1;
parameter delay1 = 2;
parameter delay1a = 3;
parameter delay1b = 4;
parameter delay1c = 5;

always @(posedge clk or posedge clkif)
begin
	if (reset == 1'b1)
	begin
	 q <= 4'b0;
	 end
	 else if (slowena == 1'b1) 
	 begin
	 case(q)
	 //4'b0:
	 4'b0: if (q<4) 
	 begin
	 q <= q+1;
	 end
	 else 
	 begin
	 q <= 4'b0;
	 end
	 //4'b1:
	 4'b1:
	 begin
	 q<=q-1;
	 end

	 endcase
	end
endmodule
