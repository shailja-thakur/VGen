// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
// initialize out to the current input value

import array_access from "./array_access";
import EventEmitter from "./eventEmitter";
import { getValueAndRestart } from "./valueProcessor";

export default function wireSelfAssign( in: Input ): OutputVals {
  const [ value ] = getValueAndRestart( in );
  const [ prevValue ] = array_access( value, 0 );
  const [ currentValue ] = array_access( value, 1 );
  const out = EventEmitter();

  out.value = () => prevValue;
  out.restart =
    out.restart || (() => { getValueAndRestart( out ); return true; });

  return out;
}
endmodule
