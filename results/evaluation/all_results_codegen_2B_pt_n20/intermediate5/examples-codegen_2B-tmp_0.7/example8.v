// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always @ (clk,reset)
begin
    if (load == '1') begin
        out <= data;
    end else
    begin
        out <= rotate_left(out, amount);
        out <= rotate_left(out, amount);
    end
end
end
"""

# source: https://github.com/seeedstudio/curie_ethernet/blob/master/scripts/curie_ethernet/left_rotate.v
# modified by chris_meiklejohnson
# originally written by joseph on the seeedstudio forums

# input data
clk = Signal(bool(0))
reset = ResetSignal(bool(0), True, True)
# clock to the MCU
amount = Signal(intbv(0)[2:0]) # amount = 0, 1, 2, 3, 4endmodule
