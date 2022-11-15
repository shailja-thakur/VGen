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
    if (reset == 1) begin
        q <= 1;
    end
    else if (q == 12) begin
        q <= 1;
    end
    else begin
        q <= q + 1;
    end
end

int test_locRegisterUpdate() {
    int result = 0; 
    counter c;
    int cw[3:0] = {1, 1, 2};
    c.q = cw;
    c.clk = 0;
    c.reset = 0;
    c.val = 1;
    // this rule runs until the counter reloads 
    // This should assert with a '-' in the
    // location register, preventing further
    // execution of the rule.
    DINTEL_MODULE.CORE_INSTANCE.VERIFY_RULE(endmodule
