// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
if (load > 0) *out = data;
else if (load == 0 && out_if(out)) *out = 0;
else {
WHILE: while (1) {
// register counter cycles
WHILE_R: while(1) { 
  if (p == 15) goto WHILE_L;
  p.next = p.next + 1;
// Initialize the p counter at the low value 

  DELAY_POS: while (1) { 
    
// delay CK pulses for LOAD t INIT
DELAY_LOOP_POS: while(1) { 
  if (p == 15) goto DELAY_LOOP_POS;
  p.next = p.next + 1;
// Increment the p counter after every LOAD delay 
  PAUSE: while (1) { 
    
// delay counter cyclesendmodule
