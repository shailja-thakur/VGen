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
always @* begin
    case(rtl)
      reg [6:5] r_reg_CAL[5:2] = {{4'b0}};
      case(r_reg_CAL)
        case(0b00)
          r_next = 4'b10;
        case(0b001)
          r_next = 4'b01; 
        case(0b011)
          r_next = 4'b11;
        case(0b010)
          r_next = 4'b10; 
        default
          r_next = 4'b00;
      endcase
      r_next(-4) = r_reg_CAL((r_reg_CAL)-2);  // feedback_value(-4)
      r_reg = 1'b1 & r_next;
    endcase)
endendmodule
