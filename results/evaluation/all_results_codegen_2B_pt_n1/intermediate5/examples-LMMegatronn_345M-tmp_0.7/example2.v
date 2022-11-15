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
// which is the initial/left store unit
reg [7:0] out_reg;
// which is the output shift register
reg [7:0] shift_out;
// which is the FSM
reg [1:0] current_state;
// it's the first product
always@(posedge clk or negedge reset)
begin
    if(!reset)
    begin
        // both stop bit and load_sr_input
        previous_state <= 2'b00;
        previous_state <= 2'b00;
        out_reg <= 8'b00000001;
        out_reg_valid <= 1'b0;
     end
end
endmodule
