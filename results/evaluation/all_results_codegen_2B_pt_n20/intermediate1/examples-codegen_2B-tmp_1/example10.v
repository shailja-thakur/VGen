// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

input a_l, a_h;
input b_l, b_h;
input charge_l, charge_h;

register unsigned int a_r;
register unsigned int b_r;
register unsigned int charge_r;

void Update_Register( 
input& a_h, 
input& a_r, 
unsigned int a_l, 
input& b_h, 
input& b_r, 
unsigned int b_l);

void Init_Adder( 
input a, 
input b);

void Clear_Sum_And_Carry_Out( 
output& cout, 
unsigned int sum, 
unsigned int carry_out);

void Enable_Half_Adder( input r = 0 );

main
Constrain the input a to [0,255]
Constrain the inputendmodule
