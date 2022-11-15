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
.wire q = 3'd4, q_bwcite = 40'd0; 

task main() 
{
  while (true) {
    timeStamp Event = timer0_capture_count;
    //get a timestamp for the start of the tick 
    clk = 1; //tick
    timer0_mono_event_counter = Event; //legate to monocuture the event object
    //printf("counter: "); 
    //for(rover=1;rorver<=12;rover++){
    for (let counter=1;counter<=12;counter++){
    //if counter=1 add 1 to q
    //else if counter=12 add 1 to q
    //else do nothing;
    //interrupt service for each tick
    //TODO : implement interrupt service for each tick
  	switch(counterendmodule
