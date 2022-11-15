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
always(clk)
begin
 	if (reset)
 	begin
 		q <= 1;
 		"cout << q << endl;"
 	end
  else if (q == 12)
  begin
	q <= 1; 
  end
  else  
  begin
	q <= q + 1;
	"cout << q << endl;"
  end
end

// The testbench below introduces a reset signal.
fbuf buf_3(

		clk, 
		reset << 1, 
		reg << 3: 0
);
TE_RETURN_VALUE(1);
END_TB_MODULE_POST_RESET;
END_TB_MODULE_ON_ERROR;

TMP_LINKAGE_BUFFER *buf;
TMP_LINKAGE_BUFFER *pkg_buf;endmodule
