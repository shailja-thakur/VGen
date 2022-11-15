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
always @(posedge clk) begin
    if(reset)
      q := 1;
    else if(q == 12)
      q := 1;
    else {
      q += 1;
    }
end

block this [rp : 0, rv : 1] {
    // Time Base Devices. These plugs together CPU, 
    // KB, SPI, USART, I2C, I2S, and GPIO peripherals, providing 
    // Ethernet, USB HID, SPI, and interrupts to your sketch.
	localparam SPD_IDSPid0 = 16;
    localparam SPD_IDSPid1 = 17;
    localparam SPD_IDSPid2 = 23;

	localparam SPD_IDSPid3 = 14;
    localparam SPD_IDSPid4 = 15;
    localparam SPD_IDSPid5 = 22;endmodule
