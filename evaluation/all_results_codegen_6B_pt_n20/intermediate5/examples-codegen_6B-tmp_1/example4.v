// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always @(posedge clk_d)
    if(load == 1) out = data; else out = left_rotate(data,out,amount[2:0],7:0);
end

// convert out bits to ASCII value
int out_to_digit(int a, int b);

// tests giving wrong inputs
constraint dut_loaded();

wire testw(int test, model io_model);
// the program consists of repeating the same blocks to test the outputs of the carry instructions and and and
// testsigs. Logic modules construct themselves in such a way that each test shows the location of the failed input.
int test();

int main(int argc, char *argv[]) 
{
    interface test_clock_overflow {{ 1'b0 }};
	interface test_clock_reset {{ 1'b0 }};

	//endmodule
