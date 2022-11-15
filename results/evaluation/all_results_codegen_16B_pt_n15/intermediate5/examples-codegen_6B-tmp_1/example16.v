// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always @(posedge clk) begin
  if (load == 1) out <= data;
  else out <<= amount;            
end

// template for bottom-half boundary instruction
void bottom_half_boundary(clk,reset,in,out);
input clk,reset;
input in;
output reg out;
// one-input, one-output operation
// outputs the negated input to the comparator
// the negation produces a high on the output when the input is low and a low on the output when the input is high
template <typename T>
def P_set_out_to_neg_in(in,out);
// negation of a template operation
// takes a template operation, a variable of type T, a clk, reset, input and an output.
// returns a template operation that sets out high when the input is low and low whenendmodule
