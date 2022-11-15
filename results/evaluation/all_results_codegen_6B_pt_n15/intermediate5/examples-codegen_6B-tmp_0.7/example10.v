// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always @(posedge clk)
  if (load)
    out <= data;
  else
    out <<= (unsigned)amount;
end

// testbench for the left_rotate module
// NOTE: NOTE: input data is the same for all tests

#define ASSERT(a) if (!(a)) { printf ("assert failed = %d\n",__LINE__); }
// assert test: assert that each bit of data is always shifted to the right
//            and then shifted back to the left.
//            this means that each bit of the output
//            can be shifted to the right to get the
//            original data, and shifted to the left
//            to get the original data shifted
//            left by 1 bit.
//            NOTE: this is a static function to be used
//            in the testbench
//            NOTE: input data is the sameendmodule
