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
reg [3:0] q_next;
always @ ( posedge clk )
begin
	if (reset)
		q_next = 0;
	else
		q_next = q_next + 1;			
end

// the counter to 0
always @ ( * )
begin
	case (q_next)
		0: q_next = q_reg[3:0];
		1: q_next = q_reg[7:4];
		2: q_next = q_reg[11:8];
		3: q_next = q_reg[15:12];
	endcase
end

endmodule
