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
wire [3:0] c;
task main(){
    while(1){
        if ((not ~reset) and c > 3) { 
            q[3:0] = 1;
        }else if(c == 12){ 
            q[3:0]++;
        }
        next;
        c = clk;
    }

    
}

counter readout = counter(
    .clk = in rgt(clk),
    .reset = in rgt(reset),
    .q = result()
);

`,
            /*----------*/
// The multiplier (M) in the Quarternary interpolator formula is 12 bits wide:
// We are trying to segment to a 4-bit hardware counter. This is not possible and
// it is the only way we are currently able to guarantee.
// Notice that we need a special case in thereendmodule
