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
    q <= 1;
    if ( reset == 1 ) begin
        q <= 1;
    else if ( q == 12 ) begin
        q <= 1;
    else begin
        q <= ( q + 1 );
    end
end
end

// This is a counter that counts from 4 to 10
module counter2( 
    input clk,
    input reset,
    output reg [4:0] q2
); 
// update q2 on the positive edge of the clock according to the following cases:
// on reset, assign q2 to 4
// else if q2 is 10, assign q2 to 4
// else, increment q2 by 1 
initial begin
    q2 <= 4;
    if ( reset == 1 ) begin
        q2 <= 4;
    else if ( q2 == 10 ) begin
        q2 <= 4;
end
end
end
end
endmodule
