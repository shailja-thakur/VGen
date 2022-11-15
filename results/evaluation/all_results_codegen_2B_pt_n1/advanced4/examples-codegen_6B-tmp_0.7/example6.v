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


#include <stdint.h>
#include <complex.h>
#include "rtos_types.h"
#include "rtos_assert.h"
#include "rtos_handoff.h"
#include "rtos_priority.h"
#include "rtos_periodic.h"
#include "rtos_semaphore.h"
#include "rtos_wait.h"
#include "rtos_event.h"
#include "rtos_queue.h"
#include "rtos_mailbox.h"
#include "rtos_timer.h"
#include "rtos_message.h"
#include "rtos_shell.h"
#include "rtos_malloc.h"
#include "rtos_task.h"
#include "rtos_service.h"
endmodule
