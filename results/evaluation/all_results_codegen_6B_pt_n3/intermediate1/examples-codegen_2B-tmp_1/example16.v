// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );
  
// Input bits are the either the low or high byte
pre_read a_register;
pre_read b_register;

// possibility to realign the output
pre_write cout_register;

// initialise sum
pre_write sum_register;

#i = carry_out
#o = sum

instr half_adder_instr::dummy[] = {xTEU0, read alo, xADDBII, hi, sum_16_counter,
sum_32_counter, xREADM,
(addn(rin(a), rin(b)))};
#i = carry_out
sum_32_counter = 40;

// add first
preadr_in add_in[4][2] = {{in_lio, in_lio},
			  {in_lo, in_hi}};

struct block addendmodule
