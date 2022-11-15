// This is a counter that counts from 1 to 12
module counter( 
    input clk,
    input reset,
    output reg [3:0] q
); 
// update q on the positive edge of the clock according to the following cases:
// on reset, assign q to 1
// else if q is 12, assign q to 1
// else, increment q by 1 
always @( posedge clk )
begin
	if ( reset == 1'b0)
	// at end of reset, give each case a default q assigned
	// to set up counter that's still adding j and k after reset
	// ( the only way to access q[3:0] is at end of reset when
	// q[3:0] is assigned to 0 - and completes an increment from 1 to 12)
	begin 
	case ( q[3:0] )
	0: q[3:0] <= 4'b0000;
	1: q[3:0] <= 4'b1000;
	2: q[3:0] <= 4'b0100;
	3: q[3:0] <= 4'b0010;
	4: q[3:0] <= 4'b0001;
	5: q[3:0end
end
endmodule
