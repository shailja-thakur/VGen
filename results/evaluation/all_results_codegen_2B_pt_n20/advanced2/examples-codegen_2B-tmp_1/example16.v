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
    reg out_q = 'x' + q[10-1-out_boundary_delay : out_boundary_delay];
#5
    reg led_out = out_q & 0x80000000; if led_out = 1 then 0 else 1;
    reg [out_limit:0] out_limit = calc_out_limits(slowena);
    reg [slowout_offset:0] slowout_offset = muldiv(slowena, out_limit, 5).out_offset;
    reg start_time = 1'bz;

    always @(posedge clk)
    begin
        start_time = 0;
        if out_q[slowout_offset:0] = out_limit then #10
            start_time ^= 1;
            #10
            # star1 - if slowend
endmodule
