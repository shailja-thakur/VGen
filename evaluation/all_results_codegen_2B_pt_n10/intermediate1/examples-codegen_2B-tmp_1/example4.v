// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );

// Global variables for the cache
integer switcher[2] = {0, 0};
integer cache[2] = {0, 0};
integer cache_counter = 0;

// Combined compute cycle
// Swap registers around between two in the cache
// Output the sum output from the second half of the adder
void half_adder_cache() {
  if (cache_counter % 2 == 0) {
    switcher[0] = !!(switcher[0] & 1);
    switcher[1] = !(switcher[1] | 1);  
    cache[0] = a;
    cache[1] = b;
  } else {
    switcher[0] = !!(switcher[0] & 1);
    switcher[1] = !(switcher[1] | 1);  
    cache[0] = b;
endmodule
