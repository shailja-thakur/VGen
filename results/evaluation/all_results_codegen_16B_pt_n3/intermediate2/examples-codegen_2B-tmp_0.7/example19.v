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
// This is a counter that counts from 1 to 12

// Use an instance of counter.
counter myCounter;

// Use a task to raise the value of the counter to the next highest value
// and output the value.
task main {
    // set the counter to 0 for the initialization
    myCounter = 0;
    // keep looping until the value of myCounter is 12
    while (myCounter < 12) {
        // update the value of myCounter to the next highest value
        myCounter = myCounter + 1;
        // output the value of myCounter
        // This task will always output the value of myCounter
        output myCounter;
    }
}
endmodule
