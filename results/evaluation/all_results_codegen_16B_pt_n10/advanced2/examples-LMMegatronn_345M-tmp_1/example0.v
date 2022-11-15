// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
// As anylon pippo logic in Altera's IP ATA.

function [3:0] mux1(
  input i0,
  input i1,
  input muxin);
begin
  mux1 = i1;
end
endfunction

// Need one failure to 240 this gives a 12-wide signal.
(* altera_attribute = "-name auto_shift_register_recognition OFF" *) mux1[4] = muxin;
// Use a Quarter II 20x2ilinx 2005
// Quartus II 20x2ilinx 2005
// The seperate an arbitrary mux_in which would be created.
// Quartus II pre-adder output in ethux.

d12_add_sub_1 _TECHMAP_REPLACE_ (
	.dataa (muxin),
	.datab (mendmodule
