// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
assign load = (out[7] & 1) == 1;
always @ (posedge clk)
begin
    if (reset == 1'b0) begin
        out[7] = out[7] << 1;
        out[7] = out[7] | (data[7] << 0);
    end else
        if (out[7] == 0x00) begin
            out[7] = out[7] << amount;
        end
end
end
end
endmodule
