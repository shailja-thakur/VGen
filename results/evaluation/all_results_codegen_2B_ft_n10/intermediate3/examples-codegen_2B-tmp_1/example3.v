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
// assign feedback concatenated with 4 most significant bits of r_reg to r_next
// assign r_reg to the output q
assign q = r_reg;
// Assign r_next [5:0] = r_reg[4 : 0] | {q[4], q[4:0]}
assign r_next = {q[4], q[4:0]} ^ {r_reg[4], r_reg[4:0]};
always @(posedge clk or posedge reset or posedge q[0])
begin
	if (reset == 1'b1)begin 
	r_reg <= 1;	
	end
	else	begin
	r_reg <= r_next;
	end
end
// changed to combinational loop since VHDL wasn't synthesizable
// Duh!
*/
// combinational loop
// apply feedback value to register
always @(posedge clk)
begin
	r_reg <= {r_reg[3:end
endmodule
