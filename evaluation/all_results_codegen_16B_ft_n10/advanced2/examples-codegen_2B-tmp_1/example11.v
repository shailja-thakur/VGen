// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
always @(posedge clk, posedge reset)
void clk_handler() {
  if (fastena || q[3] == 9) {
    q[3] = (slowena && q[3] < 9)? ++q[3] : 0;
  }
}

classcounter_tCtc:  soclib::cores::MicroBlaze_rtos {
  soclib::cores::Connector <tos_fastcount> fast_;
  soclib::cores::Connector <tos_slowcount> slow_;
  soclib::cores::Connector <tos_pctc_phase> p_phase_;
  soclib::cores::Connector <tos_pctc_mechanism> p_mechanism_;

  void fast_handler() {
    // Signal the "fast" phase if ena isendmodule
