// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
wire [71:0] tmp;
always @(posedge clk)
    if (reset) begin
        out <= 0;
    end
    else
        begin
            if ((data[0:0] == 0) && (load == 1)) begin
                out <= 0;
            end
            else
                begin
                    tmp <= data[23:0];
                    tmp <= tmp[23:0];
                    tmp <= tmp[23:0];
                    tmp <= tmp[23:0];
                    tmp <= tmp[23:0];
                    tmp <= tmp[23:0];
                    tmp <= tmp[23:0];
                    tmp <= tmp[23:0];
                    tmp <= tmp[23:0];
                    tmp <= tmp[23:0];
                    tmp <= tmp[23:0];
                    tmp <= tmp[23:0];
                    tmp <= tmp[end
end
endmodule
