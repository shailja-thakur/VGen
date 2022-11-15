// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always @(posedge clk or negedge reset) 
begin
if (reset == 1'b0)
 out <= 8'h00;
else 
 begin
 if (load == 1'b1)
 out <= data;
 else
 begin
 case(amount)
 3'b000: out <= out << 1;
 3'b001: out <= {data_[6:0],out[7]};
 3'b010: out <= {data_[12:7],out[7]};
 3'b011: out <= {data_[18:13],out[7]};
 3'b100: out <= {data_[24],out[7]};
 3'b101: out <= {data_[2],out[7]};
 3'b110: out <= {data_[4],out[7]};
 3'b111end
end
end
endmodule
