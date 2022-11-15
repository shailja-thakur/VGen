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
always @(posedge clk)
begin
    if (reset) begin
        q <= 1;
    end
    else if (q == 12) begin
        q <= 1;
    end
    else begin
        q <= q + 1;
    end
end

// The following module is a digital to analog converters that will convert the 
// signals of the counter to a voltage that can be measured and monitored.
// The voltage is converted to the analog comparator 
// differential output voltage. The voltage is specified by the
// input reference voltage, the output voltage, and the reference voltage.
// The output voltage is typically specified by the input reference voltage
// multiplied by the positive or negative value of the counter.
// The reference voltage is typically the voltage at the input of the
// counter.
module d2a( 
    input clk,
    input reset,
    inputendmodule
