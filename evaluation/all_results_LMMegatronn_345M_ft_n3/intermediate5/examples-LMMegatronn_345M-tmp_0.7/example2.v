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
// temporary shift register
reg [7:0] tmp;
integer i;
reg [7:0] temp;
// temporary shift register
always@(*)
begin
    shift_reg[0] = data[0]&data[1]&data[2]&data[3]&data[4]&data[5]&data[6]&data[7]&data[8]&data[9]&data[10]&data[11]&data[12]&data[13]&data[14]&data[15]&data[17]&data[18]&data[19]&data[20]&data[21]&data[22]&data[23])
    begin 
        shift_reg[1] = data[0]&end
end
endmodule
