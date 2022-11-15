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
// assign feedback concatenated with 4 most significant bits of r_reg to r_next
// assign r_reg to the output q
always(clk:0)
begin
    r_reg = 0;
    r_next = r_reg;
    case patterms[5]:
        r_next = shift_right(r_next, 1);
        if(__cpsr & progbit_base::bit::thumb){ // c0 = 0 -> post is blocked to writethrough
            r_next = select(r_next, r_reg, bit(7)); // transmit xored bit#7 of r_reg;
        }
        if(r_next[5] != 0){
            feedback_value = r_next[4];
        }
escape:
        if(r_next[3] != 0){
            feedback_value = r_next[2];
        }
acquire:
      case patterms[3]:
        feedback_value =end
endmodule
