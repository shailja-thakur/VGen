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
reg [7:0] shift_reg_prev;
reg [7:0] shift_reg;

always @(posedge clk) begin
    if (reset) begin
        shift_reg_prev <= 0;
        shift_reg <= 0;
    end else begin
        shift_reg_prev <= shift_reg;
        shift_reg <= shift_reg_prev;
    end
end

// function [2:0] left_shift;
// input [2:0] left_shift;
// input [2:0] left_shift;
// input [2:0] left_shift;
// input [2:0] right_shift;
// input [2endmodule
