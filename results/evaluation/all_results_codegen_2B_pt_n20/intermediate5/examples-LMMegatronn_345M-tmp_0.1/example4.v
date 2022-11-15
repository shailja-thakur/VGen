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

always @(posedge clk)
begin
    if (reset == 1'b1)
    begin
        shift_reg <= 0;
        out <= 0;
    end
    else
    begin
        if (load == 1'b1)
        begin
            shift_reg <= data;
            out <= shift_reg[7:0];
        end
        else
        begin
            shift_reg <= {shift_reg[6:0],1end
end
end
endmodule
