import whiley.io.*

(int,int) parseInt(int pos, string input):
    start = pos
    while pos < |input| && isDigit(input[pos]):
        pos = pos + 1
    if pos == start:
        throw "Missing number"
    return str2int(input[start..pos]),pos

int skipWhiteSpace(int index, string input):
    while index < |input| && isWhiteSpace(input[index]):
        index = index + 1
    return index

bool isWhiteSpace(char c):
    return c == ' ' || c == '\t' || c == '\n' || c == '\r'

int gcd(int a, int b):
    if(a == 0):
        return b		   
    while(b != 0):
        if(a > b):
            a = a - b
        else:
            b = b - a
    return a

void System::main([string] args):
    file = this.openReader(args[0])
    input = ascii2str(file.read())
    pos = 0
    data = []
    pos = skipWhiteSpace(pos,input)
    // first, read data
    while pos < |input|:
        i,pos = parseInt(pos,input)
        data = data + i
        pos = skipWhiteSpace(pos,input)
    // second, compute gcds
    for i in 0..|data|:
        for j in i+1..|data|:
            out.println(str(gcd(i,j)))

