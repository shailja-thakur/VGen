// This is a counter that counts from 1 to 12
module counter( 
    input clk,
    input reset,
    output reg [3:0] q
); 
// update q on the positive edge of the clock according to the following cases:
// on reset, assign q to 1
// else if q is 12, assign q to 1
// else, increment q by 1 
always @(posedge clk) begin
    result = (counter_o & ~(q)).read(); 
end

module output_shift( 
    input clk,
    output reg shift_o
);
// write shift_o on a posedge of clk
always @(posedge clk) begin
    shift_o = output_shr[clk];
end

module input_shift( 
    input clock, 
    input enable,
    input q_o,
    input data_o, 
    output data
); 

const int shift_reg = 7;
const int encoded_data = 2;
module input_rotate( 
    input clock, 
    input enable,
    input q_o,
    input mask_q
);

const int shift_code = 6; 
const int sign_code =endmodule
