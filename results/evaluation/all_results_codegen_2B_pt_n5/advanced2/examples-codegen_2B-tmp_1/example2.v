// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
always @(posedge clk) begin
    if ((reset == 1) && (slowena == 1)) q <= 0;
    if ((reset == 1) && (slowena == 0)) q <= 9;
    if ((reset == 0) && (slowena == 1)) q <= 0;
done

always @(posedge clk) begin
    if (slowena == 1) {
        q <= q + 1;
    }
end
);


// Design something more useful if the clock is used to count something other
// than numbers. Let the user define the function that lets the fractional component
// of the number be sent.

//function writea(in In);
//int a  rack        = write(In);    // mono out channel a
//      b  jack       = write(~In);   // jacks out channel b
//      c  fly       end
endmodule
