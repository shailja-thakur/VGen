// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
always clk rising @(posedge clk or negedge slowena) begin
    case q is
        0: if reset is high then q <= 0;
        1: parlex bit reverse_biases(slowena,q[3:1] & !slowena);
        2: if q[3:1] == '0111' then q <= 2;
        3: parallel_ff slow_1bit_weights(slowena,7:5,q[4:2]) <= slowena[7:6];
        4: parallel_ff slow_9bit_weights(slowena,3:0,q[4:2]) <= slowena[2:0];
        5: parallel_ff slow_1bit_weights(slowena,3:0,q[5:0]) <= slowena[3:2];
        6: parallel_ff slow_9bit_end
endmodule
