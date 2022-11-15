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
always @ ( posedge clk ) begin
 case ( reset )
 1 'b0); // On reset
 // assign q to 0
 9'b110000100) // If q is 9
 begin // then increment q one
 q = q + 1'b1;
 end
endcase
end
endmodule
