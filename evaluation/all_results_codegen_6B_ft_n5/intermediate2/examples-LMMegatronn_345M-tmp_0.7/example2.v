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
reg [3:0] q_reg; 

always@(posedge clk, posedge reset)
begin
	if(reset) q_reg <= 4'b0;
	else if(q == 11) q_reg <= {q_reg[2:0], q_reg[3]};
end

always@(posedge clk, posedge reset)
begin
	if(reset) q_reg <= 4'b0;
	else if(q == 14) q_reg <= {q_reg[2:0], q_reg[3]};
end

assign q = q_reg;

endmodule
