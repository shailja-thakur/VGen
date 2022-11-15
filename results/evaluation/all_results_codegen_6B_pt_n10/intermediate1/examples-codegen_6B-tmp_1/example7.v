// This is a half adder. A half adder adds two bits and produces a sum and carry-out.
module half_adder( 
input a, b,
output cout, sum );
import org.apache.nees.rpc.Function;
import org.apache.nees.rpc.RPC;
import org.apache.nees.rpc.RPCContext;
import org.apache.nees.rpc.RPCRequest;
import org.apache.nees.rpc.RPCResponse;
import org.apache.nees.util.FnvHash;

public class HalfAdd {

	final static String ADD_HALF_ADDER = "halfadder";

	public RPCResponse test() {
		FnvHash hash = new FnvHash();

		// Add a randomly chosen value to the vector of ones.
		hash.update( 1.0, 1.0 );

		RPC request = new RPCRequest( 
			ADD_HALF_ADDER,
			hash,
			new RPCResponse( hashendmodule
