// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// left shift and rotate the register out by amount bits
always@(posedge clk)
begin
if(reset)
 out <= 8'b0;
else begin
if(load)
 out <= data;
else 
 begin
 case(amount)
 // rotate right by one bit 
 3'b000: out <= out;
 // rotate right by two bits
 3'b001: out <= {out[6:0],out[7]};
 // ... add more cases here
 default: out <= out;
 endcase
 end
 end
end
endmodule
