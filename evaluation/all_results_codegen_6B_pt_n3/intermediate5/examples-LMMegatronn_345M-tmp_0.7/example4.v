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
always @(posedge clk)
begin
                                   // or shift left
                                     // ascii_data ? 8'b0 : shift_reg
                                      // ascii_data ? 8'b1 : shift_reg
                                  end
endmodule
