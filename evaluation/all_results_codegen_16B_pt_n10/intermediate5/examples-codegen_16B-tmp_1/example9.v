// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
assign out=
	(load)?{data:{wk}:{rol(out,amount)}} // load data to out if load is high
	:{{wk}:{rol(out,amount)}};           // otherwise rotate the out register followed by left shift the out register by amount bits
// assign the output signal to appropriate pins
// when reset is active ,the (load) value immediately goes to zero
// and this load register's output immediately goes to its default value 
// otherwise when not reset, the load value is always loaded to the register
always $value logic [7:0] load=0x30;	  

initial begin
  // set the clock and data to X
  // clk, data disable by default
  clk <= clk;
  data <= data;

  // wait for clock and data to be stable and set reset to 0
  crypto_gen_sigend
endmodule
