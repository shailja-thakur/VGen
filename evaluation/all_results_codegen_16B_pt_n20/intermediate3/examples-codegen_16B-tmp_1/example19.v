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
always @(posedge clk or posedge reset)
begin
  if (r_reg <= 4'b1000) begin
    r_reg <= 4'b1000;
  end
  else begin
  	r_reg[5] <= r_reg[3];
  	if (r_reg[1]) begin
	    feedback_value <= ~r_reg[2];
	end
	else begin
	  feedback_value <= ~concat(r_reg[3], r_reg[4]);
	end
	r_next = r_reg[] // USED TO DETERMINE THE NEXT STATE WITH LOADS
	r_reg <= r_next;
  end
end

lfsr lfsr1(clk, reset, q);

assign samples = lfsr1[0];
initial begin
  lfsr1 <=end
endmodule
