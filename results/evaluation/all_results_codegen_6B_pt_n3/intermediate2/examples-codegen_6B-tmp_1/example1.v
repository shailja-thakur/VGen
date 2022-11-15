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
always(clk)
  q <= (reset) ? 1'b1 :
    ((q < 12) ? (q < 0x13) ? (q + 1) : (q + 1) || 1'b1 : 1'b0 );
end
end
      
// here is a logic circuit which copies the output latch (q) to 3 other 
// Qdec outputs which will be provided by the three latches D4 wtih HIGH 
// level, D5 with LOW level and D6 on CHANGE_LEVEL level
module latches ( 
    input res[7],
    input resQdec
    output resQ,
    output resQ1,
    output resQ2,
    output resQ3
);
  if ( res[1] == 1 and res[2] == 1 )
  begin
    resQ <= resQdec;
    endmodule
