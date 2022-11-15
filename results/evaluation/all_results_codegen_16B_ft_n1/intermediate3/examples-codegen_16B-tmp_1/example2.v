// Design a 5-bit maximal-length Galois LFSR with taps at bit positions 5 and 3
module lfsr( 
    input clk,
    input reset,
    output [4:0] q
); 
reg [4:0] r_reg;
wire [4:0] r_next;
wire feedback_value;
// on reset set the value of r_reg to 1
// otherwise assign r_next to r_reg
// assign the xor of bit positions 2 and 4 of r_reg to feedback_value
// assign feedback value concatenated with 4 MSBs of r_reg to r_next
// assign r_reg to the output q
assign feedback_value = ^(r_reg[2:4]);
initial
begin : RESET
	r_reg <= 5'b01010;
	end
always @(posedge clk, stated reset)
begin : FSM
	if (reset)
	begin
	r_reg <= 5'b01010;
	end
	else
	begin
	case ({feedback_value})
	1'b00 : 
	begin
	r_reg <= r_next;
	end
	1'b01 : 
	begin
	r_reg <= 5'b10011;
	end
	1'b10 : 
	begin
	r_reg <= 5'b10101;
	end
	1'b11 :
	begin
	r_reg <= 5'b11010;
	end
	endcase
end
endmodule
