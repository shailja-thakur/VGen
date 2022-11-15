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
	implementation
	interface
	component
	state S0: pass_logic port map (/CE input) {}
	state S1:
	input
		clk:SCLKA port:SCLKA_RW.
	state
		reset: hold () port: /RESETA HALFPDBN pin: reset ADC: ADC0.
	port map
	  SCLKA_RW = dsb_out;
    resetA = suspended_down;
    SCLKA_RW = 0;
	reset: release () port: /RESETA inp pin: RESETA_RW.
    resetA = CONTINUE;
    reg resetA_tcd = resetA_OV;
    SCLKA_RW = 1;
    resetA_OV = resetA_tcd;
    SCLKA_RW = 1;
    SCLKA_RWendmodule
