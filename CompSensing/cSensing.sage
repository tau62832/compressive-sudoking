S=[
    5,0,1,  0,0,0,  0,8,2,
    0,0,9,  8,0,0,  5,0,0,
    0,3,0,  0,0,9,  0,4,0,
    8,7,0,  6,2,5,  0,9,0,
    9,0,0,  0,3,0,  0,0,8,
    0,5,0,  9,8,1,  0,7,6,
    0,9,0,  2,0,0,  0,3,0,
    0,0,5,  0,0,4,  6,0,0,
    6,2,0,  0,0,0,  4,0,5
]
s=[]

for i in range(729):
    k=(i%81)
    for i1 in range(9):
        if i1+1==S[k]:
            s.append(1)
        else:
            s.append(0)
    
def rewriteS(i):
    n=i%9
    k=int(math.floor(i/9))
    S[k]=n

def checkRowNum(R,iter):
    P[];
    P.append(s[81*R+1*iter])
    P.append(s[81*R+2*iter])
    P.append(s[81*R+3*iter])
    P.append(s[81*R+4*iter])
    P.append(s[81*R+5*iter])
    P.append(s[81*R+6*iter])
    P.append(s[81*R+7*iter])
    P.append(s[81*R+8*iter])
    P.append(s[81*R+9*iter])

    return sum(P)

def checkColNum(R,iter):
    P[]
    P.append(s[0*81+9*R+iter])
    P.append(s[1*81+9*R+iter])
    P.append(s[2*81+9*R+iter])
    P.append(s[3*81+9*R+iter])
    P.append(s[4*81+9*R+iter])
    P.append(s[5*81+9*R+iter])
    P.append(s[6*81+9*R+iter])
    P.append(s[7*81+9*R+iter])
    P.append(s[8*81+9*R+iter])

    return sum(P)

def checkRow(k,L):
    R=math.floor(k/9)
    for iter in range(9):
        if checkRowNum(R,iter)==1:
            L.remove(iter)
    return L

def checkCol(k,L):
    C=k%9
    for iter in range(9):
        if checkColNum(C,iter)==1:
        L.remove(iter)
    return L

def checkBox(k,L):
    
