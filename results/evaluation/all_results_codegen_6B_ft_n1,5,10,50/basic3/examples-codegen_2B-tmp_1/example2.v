// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
always @(posedge in[1:0]) posedge out[1:0]
{
  pos = in[1] | in[0];
}
                  
);

`

var checkFive << 1

func BenchmarkFifoInitSerial(b *testing.B) {
var d []byte = make([]byte, 5)
b.StopTimer()
for i := 0; i < b.N; i++ {
	d[0] = 100
	d[5] = 1
	for j := 0; j < 5; j++ {
		buf, err := ioutil.ReadAll(bytes.NewReader(d))
		if err != nil {
			b.Fatalf("error: %v", err)
		}
		seq.TxRxBuffer(buf, 0, -1, true)
	}
}
bendmodule
