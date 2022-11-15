// Design a 64-bit arithmetic shift register, with synchronous load. 
// The shifter can shift both left and right, and by 1 or 8 bit positions, selected by amount.
module advshift(input clk,
input load,
input ena,
input [1:0] amount,
input [63:0] data,
output reg [63:0] q); 
// when load is high, assign data[63:0] to shift register q.
// if ena is high, shift q.
// amount: Chooses which direction and how much to shift.
// 2'b00: shift left by 1 bit.
// 2'b01: shift left by 8 bits.
// 2'b10: shift right by 1 bit.
// 2'b11: shift right by 8 bits.


// ----------------------------------------------------------------------------
#include "sys/alt_irq.h"
#include "alt_log-cv_sm_register.h"
alt_u32 advshift_p = io_load;
alt_u32 advshift_v1 = ena;
alt_u32 advshift_v2 = io_load;
alt_u32 advshift_phase = 0; // 1st edge
alt_u32 advshift_mask = amount << (amount==0 ? 0 : amount-1);
#param log_cpu_id cpu_id; // ALT_LOG_CPU_SM_REGISTERS_FUSED

void advshift_proc(void)
#if defined(ALT_NR_TRACE_ENABLED)
  ALT_EVENT (ALT_EVENT_HW_ADVSHIFT_PROC)
#endif
{
  endmodule
