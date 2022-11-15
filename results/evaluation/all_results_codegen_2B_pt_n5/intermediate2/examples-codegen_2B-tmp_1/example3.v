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
initial begin                    
    counter FIO;
    q <= (clk) ? 1'b1 :
	(reset);
end

// This sets the 4 LEDs to the configuration specified in the table
module set_leds #(
    X=1'b1,
    Y=1'b1,
    Z=1'b1,
    L=1'b1
)u;
leds [X,Y,Z,L] <= gnd;

// This sets the preset to the combination of the LD data bits specified by table
module set_lds #(
    X=1'b1,
    Y=1'b1,
    Z=1'b1,
    L=1'b1
)u;
value ld [X,Y,Z,L];

// This loads the preset field and mask
function set_endmodule
