// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
contract acy is "wire_assign" {
    function wire_assign(uint amount) returns (bool result) {
        bool exchange = (amount > 0 && amount % 2 == 0) || (amount < 0 && amount % 2 == 1);
        while(amount > 0) {
            change_``();
            --amount;
        }
        if (in.gasPrice > 0 && exchange) out.gasPrice = in.gasPrice;
        if (in.callGas > 0 && exchange) out.callGas = in.callGas;
        if (in.myCode > 0  && exchange) out.myCode = in.myCode;
        return result;
    }
}
// assign out to null
contract activeChain is "acy" {
    function change_``() {
        bytes 63 = msg.data[3:63];
        byte flags =endmodule
