// Design a counter that counts from 1 to 12

module counter( 
    input clk,
    input reset,
    output [3:0] q
); 

    reg q;

    always @ (posedge clk) begin
        if (reset) q <= 4'd1;
        else if (q == 4'd12) q<= 4'd1;
        else q <= q+4'd1;
    end

endmodule