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


#include "sys/std_types.h"
#include "sys/tasks.h"
#include "sys/task_create.h"
#include "sys/task_priority.h"
#include "sys/task_wait.h"
#include "sys/task_mode.h"
#include "sys/task_period.h"
#include "sys/task_wakeup.h"
#include "sys/task_wait_all.h"
#include "sys/task_wait_event.h"
#include "sys/task_wait_timeout.h"
#include "sys/task_set_event.h"
#include "sys/task_clear_event.h"
#include "sys/task_wait_all_clear.h"
#include "sys/task_wait_event_clear.h"
#endmodule
