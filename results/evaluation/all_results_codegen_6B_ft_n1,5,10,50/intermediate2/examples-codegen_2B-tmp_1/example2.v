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
action main 
{ 
    assign q[3:0] = {3'b011, 3'b011, 3'b011};
    if (not reset) xbegin
    else if (q == "12'b1") xbegin
    else xbegin
    if (clk_b) q = q + 1;
    xend
}

module tlmpar(
    input a,
    output [3:0] o
);



// This is a counter that counts and output a synchronous signal to pan
// The counter starts off on the falling edge on plain/wire output a
// We see the on-off signal on q's positive edge of the clock
register reg [3:0] q = "0011", 
            pan_n = "0000";

// initialize stats
service stats = "QC0";

wire [end
end
endmodule
