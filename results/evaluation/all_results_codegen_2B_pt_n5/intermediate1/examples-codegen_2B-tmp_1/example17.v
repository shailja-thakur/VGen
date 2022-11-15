// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

shadow shadow1, shadow2, tmp, carry, double_carry, double_carryz;
xnext shadow1[carry + xnext], shadow2[carry + xnext];

mul mul_0, mul_1, mul_2, mul_3, add_0, add_1, add_2, add_3;
add add_0[], add_1[], add_2[], add_3[];

reg [wreg_length] wreg_0, wreg_1;
deinter_pre round;

void logic::init()
{
  xnext::init( ram_68k_68::adr_smp3_channelA );

  shadow1::init( ram_68k_68::adr_smp3_channelA );
  shadow2::init( ram_68k_68::adr_smp3_endmodule
