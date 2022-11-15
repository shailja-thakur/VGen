// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
assign load_t = is_high(load);
initial begin
  if (reset)
    out = 0;
  else
    assign out = data;
  load_t = 1;
end
always begin
  if ((isset(clk) && (input threshold level is 1) )|| (!out_t && clk )){
     out_raw = out;
     load_t = 1;
  }else{
    // write out still loaded value unless out_t is 1|0
  }

  if ( load_t ^ isset(load) ){
    // if clk or load is low, then load data to out
    if (isset(clk) || isset(load) ){
      clr_b;
      out = left_shl(out,0);
      out = left_rotate(out,end
endmodule
