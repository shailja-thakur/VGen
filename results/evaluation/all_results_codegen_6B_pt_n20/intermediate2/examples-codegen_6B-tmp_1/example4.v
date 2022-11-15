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
always@(posedge clk) {
    if (reset) q <= 1;
    else if (q == 12) q <= 1;
    else q <= q + 1; // use <= to only increase q on outclock edge
}

bool overflow(output boolean reg [3:0]) {
    for (int i = 0; i < 3; i++) if (q[i] == 13) return true;
    return false;
}`)

	husky.HelloClientPackage = helpers.MustCreatePackage("husky_client_pkg", helpers.Pkg{
		MustCreateFiles("sut.c", "input_logger.h", "counter.v"),
	})
}
endmodule
