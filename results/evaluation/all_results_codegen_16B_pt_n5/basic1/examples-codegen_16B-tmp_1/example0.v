// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
{
  cobegin {
  out = in;
  }
  cocycle {
    out = in;
  }
}

// Design a module that sums the two integers on input
module sumter( input [2] in, output out );
// sum in to out
{
  if(in[0] > 9 || in[1] > 9 ){
    out = 0;
  }else{
    out = in[0] + in[1];
  }
}
// assign sum to result
{
  cobegin {
    out = 0;
  }
  cocycle {
    if(in[0] > 9 || in[1] > 9 ) {
      out = 0;
    }
    else {
      out = in[0] + in[1];
    }
  }
}end
end
endmodule
