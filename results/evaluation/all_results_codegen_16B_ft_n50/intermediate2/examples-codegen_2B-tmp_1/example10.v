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
#defparam macro enable_bool true
  counter c:clk,reset,q update( state reset on deasserted reset_valid q<=12 ) 
{
  if( reset ){ q<=1 } else { 
        switch( q ){
        case to_enum<qt><=1: case to_enum<qt><=13: q<=5: q+=1 
        }
    }
} 

BENCH( c ){
 for( i uf; i < us-1; i+=1 ){
  if(~showTimerEnd && i==to_uint16(showTimerEnd)){ printf("%f enf.\r", F ); fflush(stdout); }
  while( ~clk() ){ }
  while( ~qubits[3endmodule
