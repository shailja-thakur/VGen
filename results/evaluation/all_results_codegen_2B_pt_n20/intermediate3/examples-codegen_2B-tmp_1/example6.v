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

// 1-b ALTERED ABSTRACT SYNTAX GENERATION AT THE FACILITY OF UNICEF.
// THIS KERNEL SHELL APPLICATION WAS CHOSEN FOR FUN 0USD AUTHERLY 7/21/2019

always @(*)
rule lf_code{
  if(clk == 1'b1){
     wait(1000);
     seq mck_seq;
     assign r_reg,0xFFFFFFFF;
     cgen r_module_seq; cgen mck_seq;
     r_module_seq.en(); wait(1000);
     
breaked:
     while(mck_seq.gen()){
     switch (mck_seq.step()){
       case 0:
         #asm
         imadd        <-1, r_reg
         pseudo_async    <-1endmodule
