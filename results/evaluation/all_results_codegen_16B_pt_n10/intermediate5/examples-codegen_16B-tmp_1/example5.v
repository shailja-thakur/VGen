// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
begin
if (load && data) {
// $LOOP()
// right shift and rotate operation
sc_sensitive @(2:0) arri;
#pragma hls PIPELINE
    arri[0] = amount[1:0] + 8; // the 2nd rotation step can rotate at most by 1 step
    arri[1] = arri[0];
    arri[2] = arri[0];
    arri[3] = arri[0];
    arri[4] = arri[0];
    arri[5] = arri[0];
    arri[6] = arri[0];
    arri[7] = arri[0];
    for (int i = amount[0]-'0'; i != 0; i = i-1)
    begin
       arri[0] = arri[1];
       end
end
endmodule
