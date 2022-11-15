// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
if ( in[1:0] == '0') begin
        pos := 0;
    end
else if ( in[1:0] == '1') begin
        pos := 1;
    end
else begin
        pos := 2;
    end
end
`

#define FEEDBACK_PRIORITY 1

static int osc1_get_frequency()
{
	return FREQ_OSC1;
}

// Only output when given
static int wavebuf[BUFFER_SIZE];
void pitch_osc_callback()
{
	// Increment buffer position
	// Always 8 bytes aligned
	uint32_t fl = rxDev.pitch_frequency/30;
	fl = (fl >> 1) + (fl & 0x200 ? 2:0);
	uint32_t c = rxDev.pitch_pulsesendmodule
