// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );


void serial_half_adder( uint8_t adc_ch )
{
  // Print label on input pins.
  LPRINT( "On input: ");
  LPRINTN( "a=%x,b=%x", ( (uint16_t)adc_ch & (uint16_t)( 0x1ff ) ), (((uint16_t)adc_ch >> 9) & (uint16_t)( 0x1ff)) );
  // Input required.
  LOOP_LPRINT( " ");
  LOOP_LPRINTN( "a=%x,b=%x", ( (uint16_t)adc_ch & (uint16_t)( 0x1ff ) ), (((uint16_t)adc_ch >> 9) & (uint16_t)( 0x1ff)) );endmodule
