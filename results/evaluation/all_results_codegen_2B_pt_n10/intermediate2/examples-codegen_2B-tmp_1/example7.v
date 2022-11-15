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
void module::counter::proc() {
  if (reset == true)  // if on reset, assing 1 to 1,2,3,4,5,6,7,8,9,10,11,12
    q = 1;            // assign 1
  else if (name == "counter")
    log.log("reset q to 1 on counter " + name + ", on clock " + clk.name());
  else if (q==12)
    q=1;               // assign 1 if q is 12
  else
    q+=1;              // else increment by 1 
}

///////// 
/*
  
 
*/endmodule
