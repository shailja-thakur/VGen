// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always @(*)
begin
    if (load) begin
        out(BIT_WIDTH-amount-load_width,0) = amount_shift_in(amount);
    else
        out(0,0) = clock_and_shift(amount,load_width) << (BIT_WIDTH-amount);
end
end
endmodule
