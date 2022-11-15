// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
whWait_assign( &whWait, &out );

// Construct the process

// perform the active wait
pipe( WH_WIDTH, &whWait );

// module variables
pipe( IN0_WIDTH, &in0 );
pipe( IN1_WIDTH, &in1 );
pipe( IN2_WIDTH, &in2 );

// Driver
void Root( )
{
  volatile => in0, 
  volatile => in1, 
  volatile => in2,

// This module will assign its output to pins
;
}
endmodule
