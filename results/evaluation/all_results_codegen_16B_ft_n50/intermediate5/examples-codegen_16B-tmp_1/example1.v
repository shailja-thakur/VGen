// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// left shift and rotate the register out by amount bits
// reset is active low, oposite of what you might think
always @(posedge clk, posedge reset)
begin
if(reset == 1'b0)
 begin
// clear state, equivalent to a reset
out <= 8'h00;
 end
else if (load == 1'b1)
 begin
// load the data into the register
out <= data;
end
else
 begin
$display("no change in output");
out <= out;
// do not change output
end
end

endmodule
