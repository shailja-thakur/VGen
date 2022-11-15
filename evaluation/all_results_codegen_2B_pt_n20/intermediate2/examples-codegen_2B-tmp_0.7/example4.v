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
initial begin 
    q = x`1`;
    if ( reset == 1'b0 ) begin
        q = 1'b0;
        wait;
    end else begin
        if ( q == 12'b1 ) begin
            q = 1'b1;
            wait;
        end else begin
            q = q + 1'b1;
            wait;
    end
end 
end
endmodule
