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
    if (clk == rst) q = 1;
    else if (q == 12) q = 1;
    else q = q + 1;
end
end

// This is a counter that counts from 12 to 1
// The data is stored in qram[0] and qram[1]
// The data is updated on the positive edge of the clock according to the following cases:
// on reset, assign qram[2] to 12
// else if qram[2] is 1, assign qram[2] to 1
// else, increment qram[2] by 1 
initial begin
    if (clk == rst) qram[2] = 12;
    else if (qram[2] == 1) qram[2] = 1;
    else qram[2] = qram[2] + 1;
end
endmodule
