// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
out = in;
`
	wire := make( []byte, wireLen )

	for i := 0; ; i++ {
		str := fmt.Sprintf("wire: chip in_%d, out_%d", i, i)
		wireOut( str, wire )
		rcvString( strRcv, wire )
		fullRcv( rcvRaw, wire )
		fullEncode( rcvString( encodeRcv, wire, true ), wire, true, false )
	}
}

func encodedWireLength() {
	wireLen := 8000
	wire := make( []byte, wireLen )

	for i := 0; ; i++ {
		str := fmt.Sprintf("wire: recv_len in_%d,encode_len out_%d", i, i)
		wireOut( str, wire )
		fullRendmodule
