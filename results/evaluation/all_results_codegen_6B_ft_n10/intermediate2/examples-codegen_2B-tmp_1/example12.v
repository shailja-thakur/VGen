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
implementation
{
    constant C:={1,4,26};
    
    VSREG vcnt:=-1;
    
    wire [3:0] first;
    wire [1:0] pin;
    
    assign q[3:0]=1;
    assign vcnt=0;
    always @(posedge clk) begin
      if(reset &= ns) begin
        vcnt=0;
      end
      else if(vcnt == C) begin
        vcnt=0;
        q[(vcnt % 4) + 3]=((vcnt/4) % 12) + 1;
        vcnt=vcnt+16;
      end 
      else begin
        vcnt=vcnt+16;
        q[(vcnt % 4)end
end
endmodule
