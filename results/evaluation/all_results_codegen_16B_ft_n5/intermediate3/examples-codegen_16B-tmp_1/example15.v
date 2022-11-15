// Design a 5-bit maximal-length Galois LFSR with taps at bit positions 5 and 3
module lfsr( 
    input clk,
    input reset,
    output [4:0] q
); 
reg [4:0] r_reg;
wire [4:0] r_next;
wire feedback_value;
// on reset set the value of r_reg to 1
// otherwise assign r_next to r_reg
// assign the xor of bit positions 2 and 4 of r_reg to feedback_value
// assign feedback value concatenated with 4 MSBs of r_reg to r_next
// assign r_reg to the output q
// assume positive edge clock posedge clk
function [4:0] next_state;
input [4:0] state,feedback_value;
case (state)
1: next_state = feedback_value ^ 4;
2: next_state = feedback_value;
default: next_state = state;
endcase
endfunction
assign r_next = next_state(r_reg,feedback_value);
//r_next is assigned to wires next_state
//r_next serves as the output state
always @posedge clk
begin
 if (reset)
 r_reg = 5'b1;;
 else
 r_reg = r_next;
end
assign q = r_reg;
endmodule
