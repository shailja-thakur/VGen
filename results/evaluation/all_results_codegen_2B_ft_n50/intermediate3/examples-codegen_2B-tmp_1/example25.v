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
/*
 pwm uload (
.familiar_lsf(~r_reg ,r_reg[4:0]) 
`ifdef ALPHAE49U
`ifdef WORKING
 );
 `endif
 `endif
`endif
*/
always @ (posedge pause)
 begin
 if ( ~reset ) r_reg <= 42'b1;
 else 
 begin: random_coefficient
 /*
 // assume the value of r_reg is defined, check a_reg, a_reg_l
 if (akey[0][0]==1) r_reg[4:3] <= (~ack_reg[key_in_grp[EX1_GKEY]] & 17'b1)^8;
 if (key[13][1]==1) r_reg[2:0] <= (~ack_reg_l[key_in_grpendmodule
