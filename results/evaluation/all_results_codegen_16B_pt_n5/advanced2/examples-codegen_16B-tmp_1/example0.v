// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
// On the positive edge of the second half of the decade, 
// increment the output q.

assign q = {q_BF.mVIEWS, q_BF.VIEWS, q_BF.VIEWS};
modulate (reset, q);

always [SLOW ENA] begin:
    case (slowena)
        1'b1:       //slow counting "bfsi": second half only
            q <= {q_BF.DUCLK, q_BF.DUCLK, q_BF.DUCLK};
            

                q = 1'b0;
        0'b1:       //slowed counting "bfc": enable counter
                if (reset)
                    q = q_BF.r0;
            0'b0:       //standard counting "bf": basic logic
            default:    //basic logic
            endendmodule
