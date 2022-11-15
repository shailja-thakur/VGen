// Design a decade counter that counts from 0 through 9, inclusive.

module count_slow(
    input clk,
    input slowena,
    input reset,
    output reg [3:0] q);

// On the positive edge of the clock:
// if reset is high, reset the output q to 0. 
// Otherwise, only increment the output q if the ena input is high and q is not 9.
assign asserta = (reset && clk) ? 0 : q.bit;
assign assertb = clk && ((slowena && q == 3) || !(slowena && q != 9) || !clk);

always @(posedge clk) begin
    if(asserta == 1){
        assertb == 1;
        q++;}
end
`.

Now use the checkCounter version to ensure that q is indeed 3, 4, and 6. In particular, q must 
not increment past 9. Also, counters 3, 4, 6 & 7 all count forward when ena is high, regardless
of the desired state of q.

*/

package count

import (
	"fmt"
	"github.com/spf13/cast"
	"github.com/spf13/viper"
)

const DEFAULT_SLendmodule
