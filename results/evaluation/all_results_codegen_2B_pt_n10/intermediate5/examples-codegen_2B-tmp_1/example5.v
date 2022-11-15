// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
assign out=data, [$0]='l' if !load else [$0]='r', [$1]='l' if ! (load and ( ~ (amount toout)) ) else [$1]='r';
    
// shift up the data in out by amount positions
assign boolean [6:0] invertoutput='0'+data toout,
cond 
    if (reset [7:7]) then
        invertoutput='1'+toout
        out=[$0]
    else
    begin
        if (load [6:6]) then
            if (amount [3:0]) > ((inpout) length(toout))) then
                out=$0
            else if (amount toout)> 0 then
                out=toout[(amount [3:0])-1]
            end
        else
            if (endmodule
