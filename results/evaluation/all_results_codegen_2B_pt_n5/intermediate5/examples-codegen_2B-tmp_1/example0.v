// left shift and rotate operation
module left_rotate(clk,reset,amount,data,load,out);
input clk,reset;
input [2:0] amount;
input [7:0] data;
input load;
output reg [7:0] out;
// when load is high, load data to out
// otherwise rotate the out register followed by left shift the out register by amount bits
assign out = data;
reg [7:0] temp;
initial begin
    temp = data;
    load = 1;
    out = temp;
end;

assign execute = 0;
assign LSB = out[(0-amount)%8];
assign MSB = out[((8-1+amount) % 8)] % {0b11111111111111111111111111111111};
begin:
    out = 0;
    LSB = data[(0-amount)%8];
    if (load == 0) begin 
        out = out | LSB[0:amount];
    endif
    LSB = data[((8-1+amount) % 8)] % {0b11111111111111111111111111111111};
    if (load == 0) begin 
        out = out | LSB[0:amount];
    endifend
endmodule
