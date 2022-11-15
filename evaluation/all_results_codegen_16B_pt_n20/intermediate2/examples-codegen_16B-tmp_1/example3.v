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
    always @(posedge clk or posedge reset) begin
        if (reset == 0) begin
            q <= 1;
        end
        else begin
            case (q)
            // positive edge of clk 
            case (12) begin
                q <= 1;
            end 
            // reset q to 0
            default: 
                q <= 0;
            end
    end

    // If q is 11, increment q.
    always @(posedge clk and q==11) begin
        q <= q + 1;
    end
	
	// the output is variable q
    // values of 0 still work, as q is initialised to 1 upon reset
    // values 12 continue to increase as the clock increases
    always @(posedge clk) begin
        q <= q + 1;
    end
endmodule
