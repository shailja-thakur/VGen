// Design a signed adder that adds two 8-bit 2's complement numbers, a[7:0] and b[7:0]. 

module signed_adder(input [7:0] a,
    input [7:0] b,
    output [7:0] s,
    output overflow
); 

// The numbers a and b are added to the output s. 
// assign the occurence of the signed overflow of a and b to the output overflow.
// a signed overflow occurs if the most significant bits of a and b are low and the most significant bit of s is high
// a signed overflow may also occur if the most significant bits of a and b are high and the most significant bit of s is low


architecture w32nomad {
    parameter VRM = "Vr-5829";                  // Cell-soc Vyvar VM microarchitecture. assignments may not contain ghost Cells.

    initial Config_App(32, 1, 1);

    communication comm
    {
        fifo bus_in_a;
        buffer0(bus_in_a, i8(active));

        fifo bus_in_b;
        buffer0(bus_in_b, i8(active));

        fifo bus_out;
        buffer1(bus_out, i8(active));

        communication
        {
            communication
            {
                fifo bus_a;
                buffer0(bus_a, i8(organisation));
                assert bus_a.empty()();
                fifo bus_c;
                buffer0(bus_c,endmodule
