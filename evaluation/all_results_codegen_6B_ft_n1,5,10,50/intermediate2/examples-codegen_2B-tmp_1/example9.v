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
    // instantiate SCC 
    // note: SCC expects exactly three enabled outputs and three inputs
    SCC( 
        multiplexer( { I2C0, 2, 1 }, {clk, reset}, [q,I8,I7,I6] ) 
    );

    counter(clk, reset, q);
end;
endmodule
