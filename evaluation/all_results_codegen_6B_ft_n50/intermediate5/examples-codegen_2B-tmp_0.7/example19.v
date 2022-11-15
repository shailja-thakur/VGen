// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
reg [(2*amount)&31:0] load_low, load_high;
reg [(2*amount)&31:0] tmp_out;
reg [31:0] tmp;
reg [31:0] tmp_out_low;
reg [31:0] tmp_out_high;
reg [2*amount:0] tmp_out_low_low;
reg [2*amount:0] tmp_out_high_low;
reg [(2*amount)&31:0] tmp_out_low_high;
reg [(2*amount)&31:0] tmp_out_high_high;
reg [(2*amount)&31:0] tmp_out_high_low;

always @(*)
begin
    if (load == 1)
        out <= data;
    else if (load == 1)
    begin
        end
end
endmodule
