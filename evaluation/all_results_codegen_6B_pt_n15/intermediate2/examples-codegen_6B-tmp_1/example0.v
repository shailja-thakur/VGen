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
always @(posedge clk)
  q <= (counter == 0) ? 1 : (counter == 12) ? 1 : q + 1;
`

func main() {
	defer func() {
		if r := recover(); r != nil {
			fmt.Println("Received panic:", r)
		}
	}()
	one := []byte{1}
	toggle := func(w io.Writer) {
		fmt.Fprintf(w, "...life saving toggle\n")
	}

	s := NewProg(one)
	s.ProgBlock("driver").
		Loop(func(b *Block) {
			a := b.InstBlock("a")
			b.Op("toggle").
				Mem(31).
				PushFlag().
				Instance("sender", func(s *Source) {
					b.endmodule
