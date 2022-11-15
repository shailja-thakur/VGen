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
always @(posedge clk) begin
    if (reset) q <= 0;
    else if (q == 12) q <= 0;
    else q <= q + 1;
end

// This is the output driver. It writes to the LEDs
// on the board
// the output driver is based on a series of cascaded
// register-based muxes, which are used to select the
// appropriate signal to drive
// the LED driver.
module led(
    input clk,
    input reset,
    output reg [3:0] q
);
// The driver is based on a series of cascaded register-based
// muxes, which are used to select the appropriate signal
// to drive the LED driver.
// The driver drives the LEDs by driving the appropriate
// pin of the LED driver.
// The first mux selects between the output of the counter
//endmodule
