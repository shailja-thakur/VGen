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
always @(posedge clk) // At rising edge of clock
begin
	case({reset,q[3:0]}) // {reset,f}=0 와 아닌가? {~reset,1,2,3}=3 이라서 case 를 수행하게 되잇음던지 그런식으로 플립플하는게 서모환을 제곧하기 위한 코드입니다.
	{1'b0,4'b1110}: q<=q; //무어end
endmodule
