// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
assign load_high = out > data;
always @ (clk, reset)
begin
// load = left shift by amount -> shift high? 
if load
  load_high
begin
assign exp = amount & (0x1F);
while(true)
begin
// load alternatively parity before and logic in the bit holding the parity
assign load_real = !load_high and data & (1 << (31 - exp)) > 0;
if (exp == 0) {
  load_low;
  out = (1 << amount) | (load_high << (2*amount) | load_low)
} else {
  load_low;
  out = (1 << (amount + 1)) | (load_high << (2*amount + 1) | load_low);
}
end
end
*/
static inline void modify_regs(intend
endmodule
