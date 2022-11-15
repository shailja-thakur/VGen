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
// This works bellow
initial begin

  case ( ~reset )
  5 :
  q[3:0] <= 1'b0;
  repeat 4:
    q[3:0] <= q[3:0] + 1'b1; 
end
  case // 0-7 according to the clock
  5:
  switch( q <> '11111') 
  { //stat. counter has failed. reset counters 
    case '11111:
    q[3:0] <= '11111;
    break;;
      case '10000:
    q[3:0] <= '00010;
    break;;
      case '00100:
    q[3:0] <= '00011;
    break;;
      case '00010:
    q[3:0] <= '00001;
    break;;
      caseendmodule
