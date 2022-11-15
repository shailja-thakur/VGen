// this is a shift left and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// rotate the register out followed by shift left by amount bits
reg [7:0] shift=0;
// also takes a 31 for all bits shifting
wire [7:0] shifted1;
// reg [7:0] shifted2 = 0;
reg [7:0] shifted=0;
reg [7:0] shifted2;
reg [3:0] four=0;
// which to shift we are shifted left
// (first shifting)
always@(posedge clk) begin
//  if (reset) begin
//    shift1={data[2:0],1'b0}^2'b00
//    previousResult=0;
//    // else
//    if (load && !zero)
//    begin
//        shift<=~data;
//        increment<=0;
//   end
endmodule
