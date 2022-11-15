// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
// When sel=0, assign a to out
always @(posedge gu) begin
        if (in[2] == 1 && sel == 1) {
        pos <= 2;
        }
        else if (in[1] == 1 && sel == 0) {
        pos <= 1;
        }
        else if (in[0] == 0) {
        pos <= 0;
        } 
    end
)

// *
// * Easy PWM Test
// *
// import dac_lm3700.all;
// reg state = 0;

void simulation()
{
        // Synchronous/sequential test write
        ch_data_wr_[0] = 1;
        ch_data_wr_[1] = 501;
        ch_data_wr_[2] = 502;
        ch_dataendmodule
