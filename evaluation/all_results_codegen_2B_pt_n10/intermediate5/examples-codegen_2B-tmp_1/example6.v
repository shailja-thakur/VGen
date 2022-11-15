// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
always @(posedge clk,posedge reset,posedge reset) begin
    if (amount == 0)
    {
        out = data;
        if (load == 0)
            load = 1;
    }
    else if (amount == 1)
        load = 0;

    // don't rotate the registers if load is low
    if ((load == 1) || ((load == 0) && (data < amount)))
        out = data;

    load = load >> 1;
    data = clk;
end
);endmodule
