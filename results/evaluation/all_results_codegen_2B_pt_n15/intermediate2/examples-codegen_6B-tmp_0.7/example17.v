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
    reg[3] <= 1'b1;
    reg[2] <= 1'b1;
    reg[1] <= 1'b1;
    if (reset) begin
        reg[0] <= 1'b1;
    end else if (reg[0] == 1'b1) begin
        reg[0] <= 1'b0;
        reg[1] <= 1'b1;
        reg[2] <= 1'b1;
    end else begin
        reg[1] <= 1'b1;
        reg[2] <= 1'b1;
    end
end

module mux(
    input clk,
    input reset,
    output q
);
    always @(posedge clk) begin
        if (reset) begin
            q <= 1'b0end
end
endmodule
