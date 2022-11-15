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
always @(posedge clk) begin
if(reset == 1'b1)
q <= 4'd1;
else case(q)
4'd12: q <= 4'd1;
default: q <= q + 4'd1;
endcase
end
// update the LED's on the seven segment display
// when q is 0, turn off the LED
// when q is not 0, turn on the LED
always @(q) begin
case(q)
4'd0: led <= 3'b110;
4'd1: led <= 3'b011;
4'd2: led <= 3'b101;
4'd3: led <= 3'b111;
4'd4: led <= 3'b000;
4'd5: led <= 3'b100;
4'd6: led <= 3'b010;
4'd7: led <= 3'b110endmodule
