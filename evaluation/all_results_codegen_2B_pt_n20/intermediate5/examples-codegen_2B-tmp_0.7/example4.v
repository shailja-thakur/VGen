// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
if (load == 1) begin
    out = data;
end else
begin
    out = data;
    // check if amount is 0
    if (amount == 0)
    begin
        out = data;
    end else
    begin
        // load data to out
        out = data;
        // if amount is 1, do a rotaing left shift
        if (amount == 1)
        begin
            out = (data << 1) | (data >> (32-1));
        end else
        // if amount is 2, do a rotaing left shift
        if (amount == 2)
        begin
            out = (data << 2) | (data >> (32-2));
        end else
        // if amount is 3, do a rotaing left shift
        if (amount == 3)
        begin
            out = (data << 3)end
end
end
endmodule
