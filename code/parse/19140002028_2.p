<create>
54
push
push
push
push
push
mov
mov
call
mov
test
je
mov
call
mov
add
mov
xor
mov
call
mov
cmp
jl
mov
mov
mov
call
mov
test
je
mov
call
mov
add
mov
xor
mov
call
mov
add
mov
cmp
jl
mov
mov
pop
pop
pop
pop
pop
ret
mov
call
xor
call
<print>
18
push
mov
mov
xor
call
test
je
mov
mov
cvtss2sd
mov
mov
call
mov
test
jn
pop
ret
<findnode>
13
cmp
jl
test
je
mov
mov
cmp
jg
add
test
jn
mov
ret
<findlast>
5
mov
mov
test
jn
ret
<insert1>
3
mov
mov
ret
<insert2>
28
push
mov
mov
test
je
mov
cmp
jl
mov
mov
mov
cmp
jg
add
test
jn
test
je
mov
mov
mov
jmp
mov
xor
call
mov
pop
ret
<insert3>
9
mov
mov
mov
test
jn
mov
mov
mov
ret
<delete>
43
push
push
push
mov
cmp
jn
mov
mov
call
mov
jmp
xor
mov
mov
add
cmp
jn
mov
test
je
mov
cmp
jb
mov
mov
mov
cmp
ja
add
test
jn
test
je
mov
mov
jmp
mov
call
mov
add
pop
pop
ret
<main>
214
push
push
push
push
push
push
sub
mov
call
mov
xor
call
lea
mov
xor
call
mov
call
mov
call
mov
mov
xor
call
test
je
mov
mov
mov
cvtss2sd
mov
mov
call
mov
test
jn
lea
lea
lea
lea
mov
call
mov
call
mov
xor
mov
call
mov
call
mov
cmp
je
cmp
jn
mov
call
mov
mov
xor
call
lea
mov
xor
mov
call
mov
call
mov
xor
mov
call
mov
cmp
je
cmp
je
mov
cmp
jn
mov
mov
test
jn
mov
mov
jmp
mov
xor
call
mov
xor
mov
call
mov
cmp
jn
mov
mov
call
mov
jmp
xor
mov
mov
add
cmp
jn
mov
test
je
mov
cmp
jb
mov
mov
mov
cmp
ja
add
test
jn
test
je
mov
mov
jmp
mov
mov
jmp
mov
xor
call
mov
xor
mov
call
mov
test
je
mov
mov
cmp
jl
mov
mov
mov
cmp
jg
add
test
jn
test
je
mov
mov
mov
jmp
mov
call
mov
xor
call
test
je
mov
mov
mov
cvtss2sd
mov
mov
call
mov
test
jn
jmp
mov
xor
call
mov
mov
xor
call
mov
xor
call
test
je
mov
mov
mov
cvtss2sd
mov
mov
call
mov
test
jn
jmp
xor
mov
add
cmp
ja
xor
add
pop
pop
pop
pop
pop
pop
ret
xchg