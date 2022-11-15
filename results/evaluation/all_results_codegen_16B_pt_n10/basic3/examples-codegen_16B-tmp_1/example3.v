// This is a 3-bit priority encoder. If none of the input bits are high, output is zero.
module priority_encoder( 
input [2:0] in,
output reg [1:0] pos ); 
// When sel=1, assign b to out
// when sel=0, assign a to out
always with ( pos ) begin 
	if (in[0])
		pos = 0;
	else if (in[1])
		pos = 1;
	else
		pos = 2; // select the input

	if (in[2])
		pos = 4;
	else if (in[3])
		pos = 5;
	else
		pos = 6; // select the input

	output=pos;
end
        */
        for(int i=0;i<32;i++){
            for(int j=0;j<4;j++)
                Configuration::TransitionConfiguration[i][j]=0;
        }

//             Configuration::TransitionConfiguration[chgpin] = { 1, 2, 3, 4 } ;
//             Configuration::transitionFiniteStateMachine( Configurationendmodule
