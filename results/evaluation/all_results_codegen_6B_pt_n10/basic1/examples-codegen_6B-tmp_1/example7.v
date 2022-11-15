// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
`)
        }
        userOut = fmt.Sprintf(">>>\n%v\n", strings.Join(outputs, "\n"))
    }

    goFmt(\nuserIn, fmt.Sprintf("Then you can use the `%v` function to copy the \ninput to the output without sorting. The example \"csvfoo.csv\" \nis the input and \"csv.csv` is the output. Would you like to copy `csv.csv` to `csvfoo.csv`?", strings.Join(inputs, "\n\t")))

    IT(1).threshold(tstmt)
}

func genCasesFromContrib(contrib *rw.Continuation, fnid int, fn *bh.WrappedFun) {
    if contrib.Continuations.Contains(fnid) {
        contrib.Add(fnid, fn)endmodule
