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
    if(reset) begin
        q <= 1;
        case counter: begin
            if (q == 12) q <= 1;
            else q <= q + 1;
        end
    end
end
`)

	cout << endl << "It runs the counter" << endl;

	auto script_2 = string("solve-03 v0.1 by Frédéric Salvato\n" \
		"This program port some wikiural routines as IRCSE and SIT CSV stream saying:\n" \
		"Solving the only railroad problem ever solved by camea folks : Sailing a Train by Spacehole's TA-E maroon :\n" \
		"under protest, president had elected by senate, victory, targeting the leading presidential candidate (\"Ziufang Len\"),\n" \
		"endmodule
