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
specify specparameter REGISTERSIZE = 32;
genvar i; // make a wire called i for you
// make an inverter that inverts reset
// make a shift and rotate E inset that erases that half-time and then sets it
// when data on input clk changes (or multiple inputs, you've had this problem before).
// also had this issue where r_reg came in as an initial value.
assign feedback = ^~(r_end & clk);
always @(posedge clk or posedge reset) begin
 if (reset)
 begin
 r_reg <= 'h5'b10000;
 end
 else begin
 r_reg <= r_next;
 end
end
 
always @(posedge clk or posedge reset)
 if (reset)
 begin
r_next = 'h1;
end 
else
begin
	endmodule
