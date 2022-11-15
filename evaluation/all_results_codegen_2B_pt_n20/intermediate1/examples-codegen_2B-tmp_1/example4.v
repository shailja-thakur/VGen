// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

input run;
input ch;

int level = 0;
signed int carry_out;

wire v;
wire h = 0;
wire f = 0;

input address;

// Run clock
register type2 i = 0;
void i_fsm( RunClock );
static unsigned int i_n( );
static void h_fsm( RunClock );
static void f_fsm( RunClock );
static void i_i( RunClock );
static void i_c( RunClock );

// Run state machine implementation
static pair< bool, unsigned int > run_fsm( RunClock );
static pair< bool, unsigned int > run_state_machine();
static pair< bool, unsigned int > run_zeropage_transition();
static pair< bool, unsigned int > run_halfpage_transition();
static pair< bool, unsignedendmodule
