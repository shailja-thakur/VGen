// this is a shift left and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// rotate the register out followed by shift left by amount bits
reg [7:0] shift_reg;
always@(posedge clk)
begin
    if (reset)
        shift_reg <= 0;
    else
    begin
        shift_reg[0] <= data[7];
        // 00 -- if 00 -- else load 11 -- else load 00
        if (load)
            shift_reg[7:1] <= data[6:0];
        else
            shift_reg <= {shift_reg[6:0],1'b0};
    end
end
assign out = shift_reg[7:1];
// After reset, initialize flag in 1endmodule
