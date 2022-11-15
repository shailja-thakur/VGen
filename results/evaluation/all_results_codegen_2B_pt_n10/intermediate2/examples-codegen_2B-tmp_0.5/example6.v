// This is a counter that counts from 1 to 12
module counter( 
    input clk,
    input reset,
    output reg [3:0] q
); 
// update q on the positive edge of the clock according to the following cases:
// on reset, assign q to 1
// else if q is 12, assign q to 1
// else, increment q by 1 

// The following code is a verbatim copy of the above code, but written
// in a way that is useful for a real application.
//
// counter( clk, reset, q )
//
//   if ( reset )
//       q = 1
//   else if ( q == 12 )
//       q = 1
//   else
//       q = q + 1

#include "driverlib/rom.h"
#include "driverlib/sysctl.h"
#include "driverlib/interrupt.h"
#include "driverlib/pin_map.h"
#include "driverlib/systick.h"
#include "driverlib/gpio.h"
#include "driverlib/timer.h"

#include "utils/uartstdio.h"
#include "utils/uartstdio_uart.h"

endmodule
