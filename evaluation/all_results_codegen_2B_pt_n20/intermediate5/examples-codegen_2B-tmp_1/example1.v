// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always @(posedge clk or posedge reset) begin
    if (reset) begin
        out <= data;
    end
    if ( (clk')read == '1') begin
        load <= 1;
    end else begin
        load <= 0;
    end
    // rotation by amount
    data' <= (data << amount) | (data >> size-amount);
end
`
endmodule
