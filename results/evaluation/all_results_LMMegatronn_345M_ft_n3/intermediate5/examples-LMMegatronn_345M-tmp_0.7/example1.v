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

always@(posedge clk or negedge reset)
begin
    if (!reset)
    begin
                  // Initialize Inputs
                   in = 0;
                   shift_reg = 0;
                   out = 0;
    end
    
    else if (load)
    begin
            // Shift right arithmetic
                         end
end
endmodule
