// Design a 2-to-1 multiplexer.
module mux( 
input [4:0] a, b,
input sel,
output [4:0] out );
// When sel=0, assign a to out. 
// When sel=1, assign b to out. 
// When sel=2, assign a-b to out. 
mux @clk clk_pp3 pwr3_pp3 {
  input posedge msel;
  input[8:0] a;
  input[8:0] b;
  output[8:0] out;
  reg out_reg out_bit;
    
  assign msel = posedge msel;
  
  always @* begin
    assign out[7:0] = b[7:0];   
    assign out[15:8] = a[15:8];
    assign out[23:16] = a[7:0];
    assign out[31:24] = b[15:8];

  // msel:0, a:0 ,b:1
  //      msel:1, a:end
endmodule
