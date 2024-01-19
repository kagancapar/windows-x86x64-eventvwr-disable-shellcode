0:  48 31 c9                xor    rcx,rcx
3:  48 81 e9 da ff ff ff    sub    rcx,0xffffffffffffffda
a:  48 8d 05 ef ff ff ff    lea    rax,[rip+0xffffffffffffffef]        # 0x0
11: 48 bb c7 73 0f f7 98    movabs rbx,0x14f8298f70f73c7
18: 82 4f 01
1b: 48 31 58 27             xor    QWORD PTR [rax+0x27],rbx
1f: 48 2d f8 ff ff ff       sub    rax,0xfffffffffffffff8
25: e2 f4                   loop   0x1b
27: 3b 3b                   cmp    edi,DWORD PTR [rbx]
29: 8c 13                   mov    WORD PTR [rbx],ss
2b: 68 6a 8f 01 c7          push   0xffffffffc7018f6a
30: 73 4e                   jae    0x80
32: a6                      cmps   BYTE PTR ds:[rsi],BYTE PTR es:[rdi]
33: d9 d2                   (bad)
35: 1d 50 91 3b 3e          sbb    eax,0x3e3b9150
3a: 25 fd ca c4 53          and    eax,0x53c4cafd
3f: a7                      cmps   DWORD PTR ds:[rsi],DWORD PTR es:[rdi]
40: 3b 84 a5 80 ca c4 53    cmp    eax,DWORD PTR [rbp+riz*4+0x53c4ca80]
47: e7 3b                   out    0x3b,eax
49: 84 85 c8 ca 40 b6       test   BYTE PTR [rbp-0x49bf3538],al
4f: 8d 39                   lea    edi,[rcx]
51: 42 c6                   rex.X (bad)
53: 51                      push   rcx
54: ca 7e c1                retf   0xc17e
57: 6b 4f 6e 8b             imul   ecx,DWORD PTR [rdi+0x6e],0xffffff8b
5b: 9a                      (bad)
5c: ae                      scas   al,BYTE PTR es:[rdi]
5d: 6f                      outs   dx,DWORD PTR ds:[rsi]
5e: 40 06                   rex (bad)
60: ba 02 b6 99 43          mov    edx,0x4399b602
65: ad                      lods   eax,DWORD PTR ds:[rsi]
66: ec                      in     al,dx
67: 95                      xchg   ebp,eax
68: 32 5e bf                xor    bl,BYTE PTR [rsi-0x41]
6b: 13 d0                   adc    edx,eax
6d: 6f                      outs   dx,DWORD PTR ds:[rsi]
6e: 8a 85 4f 47 f6 48       mov    al,BYTE PTR [rbp+0x48f6474f]
74: 09 cf                   or     edi,ecx
76: 89 c7                   mov    edi,eax
78: 73 0f                   jae    0x89
7a: bf 1d 42 3b 66          mov    edi,0x663b421d
7f: 8f                      (bad)
80: 72 df                   jb     0x61
82: a7                      cmps   DWORD PTR ds:[rsi],DWORD PTR es:[rdi]
83: 13 ca                   adc    ecx,edx
85: 57                      push   rdi
86: 45                      rex.RB
87: 4c 33 2f                xor    r13,QWORD PTR [rdi]
8a: be 99 52 ac 57          mov    esi,0x57ac5299
8f: 8f                      (bad)
90: 8c c6                   mov    esi,es
92: b6 13                   mov    dh,0x13
94: b6 c7                   mov    dh,0xc7
96: 49 c6                   rex.WB (bad)
98: a5                      movs   DWORD PTR es:[rdi],DWORD PTR ds:[rsi]
99: 42 c6                   rex.X (bad)
9b: 51                      push   rcx
9c: ca 7e c1                retf   0xc17e
9f: 6b 32 ce                imul   esi,DWORD PTR [rdx],0xffffffce
a2: 3e 95                   ds xchg ebp,eax
a4: c3                      ret
a5: 4e c0 ff 93             rex.WRX sar dil,0x93
a9: 7a 06                   jp     0xb1
ab: d4                      (bad)
ac: 81 03 25 cf 36 36       add    DWORD PTR [rbx],0x3636cf25
b2: 26 ed                   es in  eax,dx
b4: 5a                      pop    rdx
b5: 17                      (bad)
b6: 45                      rex.RB
b7: 4c 33 2b                xor    r13,QWORD PTR [rbx]
ba: be 99 52 29 40          mov    esi,0x40295299
bf: 4c 7f 47                rex.WR jg 0x109
c2: b3 13                   mov    bl,0x13
c4: c2 53 48                ret    0x4853
c7: c6                      (bad)
c8: a3 4e 7c 9c 0a 07 00    movabs ds:0x321700070a9c7c4e,eax
cf: 17 32
d1: 57                      push   rdi
d2: b6 c0                   mov    dh,0xc0
d4: dc 16                   fcom   QWORD PTR [rsi]
d6: 5b                      pop    rbx
d7: 86 2b                   xchg   BYTE PTR [rbx],ch
d9: 4e ae                   rex.WRX scas al,BYTE PTR es:[rdi]
db: d9 d8                   (bad)
dd: 07                      (bad)
de: 82                      (bad)
df: 2b 53 4e                sub    edx,DWORD PTR [rbx+0x4e]
e2: a5                      movs   DWORD PTR es:[rdi],DWORD PTR ds:[rsi]
e3: 67 62                   addr32 (bad)
e5: 17                      (bad)
e6: 40 9e                   rex sahf
e8: 29 47 7c                sub    DWORD PTR [rdi+0x7c],eax
eb: 8a 6b 18                mov    ch,BYTE PTR [rbx+0x18]
ee: fe                      (bad)
ef: 38 8c 52 bf 22 83 4f    cmp    BYTE PTR [rdx+rdx*2+0x4f8322bf],cl
f6: 01 c7                   add    edi,eax
f8: 73 0f                   jae    0x109
fa: f7 98 ca c2 8c c6       neg    DWORD PTR [rax-0x39733d36]
100:    72 0f                   jb     0x111
102:    f7 d9                   neg    ecx
104:    38 7e 8a                cmp    BYTE PTR [rsi-0x76],bh
107:    a8 f4                   test   al,0xf4
109:    f0 22 23                lock and ah,BYTE PTR [rbx]
10c:    72 fa                   jb     0x108
10e:    a3 91 32 b5 51 0d 3f    movabs ds:0xfed23f0d51b53291,eax
115:    d2 fe
117:    12 3b                   adc    bh,BYTE PTR [rbx]
119:    8c 33                   mov    WORD PTR [rbx],?
11b:    b0 be                   mov    al,0xbe
11d:    49 7d cd                rex.WB jge 0xed
120:    f3 f4                   repz hlt
122:    17                      (bad)
123:    ed                      in     eax,dx
124:    87 f4                   xchg   esp,esi
126:    46 d4                   rex.RX (bad)
128:    01 60 9d                add    DWORD PTR [rax-0x63],esp
12b:    98                      cwde
12c:    db 0e                   fisttp DWORD PTR [rsi]
12e:    88 1d 8c da 84 fb       mov    BYTE PTR [rip+0xfffffffffb84da8c],bl        # 0xfffffffffb84dbc0
134:    a2 2c 6e a9 15 66 90    movabs ds:0xe7b8906615a96e2c,al
13b:    b8 e7
13d:    39 64 a9 07             cmp    DWORD PTR [rcx+rbp*4+0x7],esp
141:    63 98 ff a2 3c 75       movsxd ebx,DWORD PTR [rax+0x753ca2ff]
147:    a6                      cmps   BYTE PTR ds:[rsi],BYTE PTR es:[rdi]
148:    01 7b ca                add    DWORD PTR [rbx-0x36],edi
14b:    b8 e6 26 72 a6          mov    eax,0xa67226e6
150:    11 63 92                adc    DWORD PTR [rbx-0x6e],esp
153:    fc                      cld
154:    82                      (bad)
155:    4f                      rex.WRXB
156:    01                      .byte 0x1