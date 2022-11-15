// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
initial out = data;
assign load = out[2] & 1;
initial out = out'data;

// allow data falling at input for right shift in the right direction
assign out'load = out[1] & 1;
// if the incoming data to this module is a 0x00, rotate the incoming data by amount number of times, then stick the final value into the out register
// else, the incoming data to the right register is within 0x7F range, left shift the incoming data by amount times to the right register and then stick the final value into the out register
assign out = out'data'data;

begin

[load]
    if (clk == reset)
    begin
        out {1'b0} <= load;
    end
    else
    begin
        out = ((out{:1} << (amount'f'+1))end
end
endmodule
