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

//replica logic in the the R(reg,r_next) clause as an OR clause

always @(posedge bool_clk)
endcase
endcase

// within the clause r_next toggle if clk == 1
always 
    #4
    r_reg == (r_next != feedback_value)
endcase

// round-robin design pattern
always r_next = r_reg + r_next;
endmodule
