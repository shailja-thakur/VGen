// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
reg [7:0] data_new;
reg [7:0] data_aux;
reg [6:0] i;
reg busy,load_reg;
always @(posedge clk or posedge reset)
if(reset)
begin
data_new <= 8'b0;
i <= 7'b0;
end
else
begin
if (load)
data_new <= data;
else
begin
for(i=7;i>=0;i=i-1)
begin
out<=data_aux;
data_aux<= data_new;
data_new<= {data_new[0],data_new[7:1]};
busy<=1'b1;
end
end
end
always @(*)
begin
reset_reg=reset;
load_reg=load;
// needn'tend
endmodule
