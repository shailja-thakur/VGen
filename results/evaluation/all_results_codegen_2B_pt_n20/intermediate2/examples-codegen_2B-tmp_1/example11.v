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
initial begin
  q = ( reset == 0 ? 1 : (reset == 1) ? 12 : q + 1 );
end 
----------------------------------------------------------------------*/
int mips_ubit_finalize(int);

void system_init(void)
{
  #ifdef __mips_ubit_finalize
  __mips_ubit_finalize();
  #else
  mips_ubit_finalize(0);
//  mips_ubit_finalize(1);
  #endif

  /* turn off all the interrupts -- We may be starting here with PIC interrupts disabled. */
  //exc_disable_all();

  /* if we ever get here, make sure we have acutally turned off various PIC pre-emption */
  //Gpio_out_b(GPIOC,21);  /* Software reset*/
  //TinyWireendmodule
