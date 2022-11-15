// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
module load_l(clk,reset,load,out);
input clk,reset;
input load;
output reg load_out;
/**********************************************************/
// rotate the carries J1k++;
module carry_rotate(clk,reset,carry,e,f,j1k_carry,c);
input clk,reset;
output carry;
input e,f,j1k_carry;
reg [2:0] carryz;
// short sum carry of J1k and add + j1k_carry + round up to 3 bits on binary carry
reg carry2,carry2_add,carry_add;
reg carry_align;
always @ (posedge clk or negedge reset)
    carry_align <= j1k_carry();
always @ (posedge clk or negedge reset)
    carry2 <= (carryendmodule
