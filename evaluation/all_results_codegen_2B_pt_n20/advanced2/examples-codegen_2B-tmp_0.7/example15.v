// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.

always @(posedge clk)
    #0 if reset && slowena
        q[3:0] = 0;
    endcase
    #0 if reset && !slowena
        q[3:0] = q[3];
    endcase
    #0 if posedge(clk)
        #0 if slowena
            if (slowena)
            {
                if (q[3] < 9)
                {
                    q[3] = q[3] + 1;
                }
                else
                {
                    q[3] = 0;
                }
            }
        #0 else
            if (slowena)
            {
                #0 if q[3] == 3
                    q[3] = 0;
                #0 else if q[3] == 4
                    q[3] = 1;
                #0endmodule
