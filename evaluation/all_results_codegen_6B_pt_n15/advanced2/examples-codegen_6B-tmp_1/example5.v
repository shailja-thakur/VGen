// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
timed fast_mem8 Decadecounter1 === "countSlowDecadeBy1.vhd";

(* total_cycle += "\nDecadecounter\n";* end *)

begin fast_decadecounting(Decadecounter1);

end

// ## Expander_vhd
/*
I'LITERATE_EXPANSION += O.DMA(
    phase_next,
    default implicit_phase ,
    unitBoundL = "fast_decadecounting"
 );
*/

// ----------------------------------------------------------------------------
// | BY PORT 133, EXPANSION PARAMS EXPANSION PARAMS EXPANSION PARAMS |
// ----------------------------------------------------------------------------

// KEEP THIS SIMPLE, DRILL ON TO THE SMALLGATE2 computation OR LOOK FOR 
// '** Program Small Gate <tt><> >.vhd **'

// # ***** TRAFOendmodule
