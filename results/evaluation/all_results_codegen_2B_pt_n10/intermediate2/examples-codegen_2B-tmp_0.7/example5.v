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
wire [12] q_old;
dateTime q_periodic[12]; // period is 12, so the array holds the times when q is 1 

// get the current counter value
wire [3:0] q_curr;

// this is the main function
void main() {
    // this is the counter that counts from 1 to 12
    counter c;
    // value of the counter, which starts at 1
    reg [3:0] q_in;
    // q is initially reset
    q_in = 0;
    
    // instantiate the timer
    motor_counter(clk, reset, q_in, c);
    
    
    // set q_old to q_curr to 1 on the first clock edge
    if (!q_old) {
        q_old = q_curr;
    }
    
endmodule
