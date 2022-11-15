// this is a shift left and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// rotate the register out followed by shift left by amount bits
reg [7:0] shift_reg;
// which is how many bits to shift left
reg [7:0] shift_reg_hold;
// which is how many bits should be shift left
reg [7:0] shift_reg_hold_hold;
// which is how many bits should be shift left
reg [7:0] shift_reg_hold_hold_next;
// the next state is the output, which is the register already sampled
reg [7:0] out_shr;

always@(posedge clk or negedge reset)
begin
  if(!reset)
  begin
    shift_reg_hold_next <= 8'b0;
    shift_reg_hold <= 8'b0;
    shift_reg <= 8'b0;
  end
  else
  begin
    if(end
end
endmodule
