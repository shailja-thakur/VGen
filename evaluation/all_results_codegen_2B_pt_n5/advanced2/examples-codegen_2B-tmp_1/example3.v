// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.

sc_clock c; clk = c;
smpl counter0(clk, slowena);

sc_clock_pipe<sc_ncycles> p1;
output_reg<1> out;
for (q = 0; q < 3; ++q) counter0.out(wr(out, q));

sc_clock_pipe<sc_max_cycles> p2;
bus_in<wc> pad;
for (q = 0; q < 3; ++q) pad->in(wr(p1.dequeue_rev()));
for (integrator::gcd(p1, p2, integrator::finite); true;) {
    const bool newpad = !pad->read();
    if (newpad) continue;
    if (!newpad) { padded++; }
    const sc_signed_t const_0 = (integendmodule
