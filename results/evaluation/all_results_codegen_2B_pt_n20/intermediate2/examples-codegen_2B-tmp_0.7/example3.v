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
    q = 1;
end 

// The next two functions are a clock for the counter that counts from 1 to 12
// The second function is a clock for a LED connected to the GPIO pin 0
initial begin
    clk = 1;
    reset = 1;
    q = 0;
end

// This is a clock for the LED that is connected to the GPIO pin 0
initial begin
    clk = 0;
end

// This is a function that is called when the counter reaches 12
// The function will turn on the LED.
// The function is called from the user code.
// The function is a clock to the GPIO pin 0.
initial begin
    q = 12;
end
endmodule
