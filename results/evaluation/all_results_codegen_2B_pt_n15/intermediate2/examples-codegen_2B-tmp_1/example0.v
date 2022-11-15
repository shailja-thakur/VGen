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

#ifdef IDLE
    counter_0 = 12;
    counter_1 = 1;
#else    
	counter_0 = false;
	counter_1 = false;
	for(clk<='p'){ 
		counter_0 = !counter_0;
		counter_1 = !counter_1;
	}
#endif // IDLE

end

// This is a counter that counts to 30 according to the following cases:
// on reset, assign q to 1
//     If counter_0 is neither true or false, assign q to 0
// else if counter_0 is false and counter_1 is true, assign q to 10
// else, assign q to 3
// The purpose of the large repetition is that the only way to connect
// simultaneously the dadat grid buffers to the counter restores and notifies the other component
module vcountendmodule
