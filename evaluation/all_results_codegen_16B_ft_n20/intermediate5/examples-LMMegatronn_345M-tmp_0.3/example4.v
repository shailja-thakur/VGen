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
// which is the "shift_reg" is the LSB of shift_reg
always@(posedge clk or negedge reset)
begin
    if(!reset)
    begin
        shift_reg <= 8'b0;
    end
    else
    begin
        shift_reg <= {shift_reg[6:0],1'b0};
    end
end
//assign out = shift_reg;

// function [7:0] shifted_mux;
// input [7:0] value;
//    input [2:0] shift_reg;
//    begin
//        shifted_mux = value[7:0];
//endmodule
