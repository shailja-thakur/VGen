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

// this implementation is how to detect the specific two 7-state bits
// as how many bits are used as a shift register (2^13 into high bits)
// which can be "shift_reg" selection
always@(posedge clk) begin
    if(load)
        shift_reg[0] <= data;
    else if(~load)
        shift_reg[7:1] <= shift_reg[6:0];
    tdo <= shift_reg[7];
end

always@(posedge clk or negedge reset) begin
    if(!reset) begin
        out <= 0;
        shift_reg <= 0;
    end
end
endmodule
