// This is a counter that counts from 1 to 12
module counter( 
    input clk,
    input reset,
    output reg [3:0] q
); 
// update q on the positive edge of the clock according to the following cases:
// on reset, assign q to 1
// else if q is 12, assign q to 1
// else, increment q by 1 

wire [2::8] tmp; // special case: temporary storage for the counter

bool requests[3]; // array of bool timestamps; when true, receive a request
static counter clock(clock p0, reset p1, q p2); // wrapper to avoid bloody pin calls

#THESMADES
#ENDTHESMADES

// this module counter has three inputs: requests[3]


component counter(
    input clk,
    input reset,
    output reg [3:0] q
); 

void reset_logic(event reset_event) {
    if (reset) {
        q = 3;
    }
}

#A0 FSM
#1:VDC:CFG
#N:PULLGO
#N:GDRS
#I;IN
#R;PD

#C LOWER =endmodule
