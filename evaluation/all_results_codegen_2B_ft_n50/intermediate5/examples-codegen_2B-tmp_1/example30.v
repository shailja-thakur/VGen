// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
// once the three registers are initialized, load is low
always @(posedge clk or posedge reset)
begin
 if (reset)
 out <= 0;
 else if (load)
 out <= data;
 else
 begin
 out <= { out[0], out[7:1]};
 end
end
always @(posedge clk or posedge reset)
 begin
 if (reset)
 out1 <= 0;
 else if (load)
 out1 <= { out1[0], out1[7:1]};
 else
 out1 <= {out1[6:0], out1[7]};
 end
always @(posedge clk or posedge reset)
 begin
 if (reset)
 out2 <= 0;
 else if (load)
 out2 <= { out2[0], out2[7:1]};
 else
 out2 <= {outend
endmodule
