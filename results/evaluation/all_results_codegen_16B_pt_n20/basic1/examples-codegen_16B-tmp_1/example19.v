// Design a module that assigns the output to the input
module wire_assign( input in, output out );
// assign out to in
assign pin_output( out, in );
]
"""
    cModel = subprocess.Popen(cljsFile, stdout=subprocess.PIPE, encoding='ascii').stdout
    lines = filter(lambda x: len(x) > 0, cModel.readlines())
    elines = "".join(lines)
    elines = remove_comments(elines, '#')
    elines = strip(elines)
    ipal = {'input':strInput, 'output':strOutput, 'signal' : []}

    pattern = re.compile('\d+')
    funcReg = re.compile('(\s*)(IF|THEN)?(\s*)(==)?\s*((\w|-|\.)+)\s*$')

    rs = list()
    for line in lines:
        m = funcReg.match(endmodule
