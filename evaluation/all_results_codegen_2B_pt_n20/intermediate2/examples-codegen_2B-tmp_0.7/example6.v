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
    if (reset)
        q <= 3;
    else
    begin 
        if (q == 12)
            q <= 3;
        else 
        begin 
            if (clk == '0')
                q <= q + 1;
            else
            begin 
                if (q == 3)
                    q <= 3;
                else 
                begin 
                    if (clk == '0')
                        q <= q + 1;
                    else
                    begin 
                        if (q == 2)
                            q <= 3;
                        else 
                        begin 
                            if (clk == '0')
                                q <= q + 1;
                            else
                            begin 
                                if (q == 1)
                                    q <= 3;
                                else 
                                begin 
                                    if (clkend
end
end
end
end
end
end
end
end
endmodule
