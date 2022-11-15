// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
always nowarn(30) begin
    if (reset == 0 & ~slowena) {
        q <= 9'b00;
    } else if (reset != 0 & slowena) {
        q <= (q + 1) % 10'b10;
    }
end

// On the positive edge of slowena:
// reset the counter.
always begin
    case (slowena)
        case (5'b00):
        begin
            q <= 0;
        end;
        case (5'b01):
        case (5'b10):
        begin
            q <= 0;
        end;
        case (5'b11):
        begin
            q <= 0;
        end;
    endcase
end

// On the positive edge of reset, disable output.
always begin
    if (reset != 0) begin
        q <=end
endmodule
