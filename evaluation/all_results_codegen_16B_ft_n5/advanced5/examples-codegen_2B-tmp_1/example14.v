// This is an FSM.
module abro(
input clk, reset,  
input a,  b,
output z );
parameter IDLE = 0,
S1 = 1,
S2 = 2,
S3 = 3;
reg [1:0] cur_state,next_state;
//This is an FSM with the output z high when either of the input signals a or b are high irrsepective of their order.
sc_ufsm<z_registers > fsm;

abro .clk(clk);
abro .reset(reset);

abro 
.a(a)
.b(b)
.z(z(z.inst(9)));

fsm .a[STATECOUNT-1](STATECOUNT-1) . next_state(S2);
fsm .a[STATECOUNT-1](STATECOUNT-1) . next_state(S3);

// This is the C language subtitute for FSM inversion for pointings that while not
// solvent to a bitstring like input, can be complemented. With the following
// substitution we recognize that changing the logic of the superimposed
// abro by inverting z is a bitcop to expect. 
function address_to_booc( input address_str )
{
endmodule
