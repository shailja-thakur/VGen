// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// left shift and rotate the register out by amount bits
reg [8:0] out_next;
always @ (posedge clk) begin
if (reset) begin
out <= 0;
out_next <= 0;
end
else if (load) begin //load data
out <= data;
out_next <= out_next; // assign incoming data to out
end
else begin // rotate data
out <= out_next[8:1];
out_next <= {out_next[0:0],out_next[8:1]};
end
end
endmodule
