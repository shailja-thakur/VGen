// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always @(posedge clk,posedge reset)
begin
    if (reset) begin
        out <= 0;
    end else if (load) begin
        out <= data;
    end else begin
        out <= (data << amount);
        out <= out >> amount;
    end
end
end
end
""")

# make the module and instantiate the clock and reset signals
mod = modutil.make_module(m, "left_rotate", "left_rotate")

# connect the clock and reset signals to the module
clk = mod.get_clock("clk")
reset = mod.get_reset("reset")

# connect the clock and reset signals to the module
clk.connect(mod.get_clock("clk"))
reset.connect(mod.get_reset("reset"))

# instantiate the clock and reset signalsendmodule
