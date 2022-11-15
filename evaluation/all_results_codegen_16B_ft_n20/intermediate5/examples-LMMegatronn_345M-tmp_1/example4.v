// this is a shift left and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// rotate the register out followed by shift left by amount bits
reg [7:0] shuf [7:0];
wire [7:0] shifted_middle = data >> amount;
reg [7:0] shifted_left;

initial
begin
    // shift right arithmetic
    shuf[0] = 0;
   shuf[1] = 1;
   shuf[2] = 2;
   shuf[3] = 3;
   shuf[4] = 4;
   shuf[5] = 5;
   shuf[6] = 6;
   shuf[7] = 7;
   shuf[8] = 8;
end

always @(posedge clk)
begin
    if (!reset)
    begin
        out  <= 0;end
end
endmodule
