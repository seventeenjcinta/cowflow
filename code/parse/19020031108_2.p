<create>
44
push
push
push
mov
call
mov
lea
xor
mov
xor
mov
call
cmp
je
mov
mov
xor
mov
mov
lea
mov
mov
test
je
mov
mov
mov
call
mov
lea
mov
xor
mov
call
cmp
mov
mov
jn
mov
mov
pop
pop
pop
ret
<print>
21
push
mov
test
je
mov
call
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
mov
pop
jmp
xchg
<sort>
70
push
push
push
push
push
mov
cmp
jl
lea
lea
mov
mov
sub
xor
mov
cmp
jl
mov
sub
mov
cmp
jn
mov
test
jn
jmp
xchg
mov
and
mov
add
mov
xchg
mov
mov
cmp
jl
mov
mov
mov
mov
mov
cmp
jl
mov
mov
mov
add
jn
test
je
mov
mov
cmp
jl
mov
mov
mov
add
add
add
add
cmp
jg
pop
pop
pop
pop
pop
ret
<insert>
27
test
je
mov
cmp
jl
mov
mov
mov
test
je
cmp
jg
cmp
je
mov
jmp
xor
jmp
mov
mov
mov
add
mov
ret
mov
xor
jmp
<delete>
31
push
mov
test
je
cmp
jn
mov
jmp
mov
call
jmp
mov
mov
mov
test
je
cmp
jn
mov
cmp
je
mov
jmp
mov
call
jmp
mov
add
mov
pop
ret
<main>
245
push
push
push
push
push
sub
mov
call
mov
call
mov
lea
xor
mov
xor
mov
call
cmp
je
mov
mov
xor
mov
mov
lea
mov
mov
test
je
mov
mov
mov
call
mov
lea
mov
xor
mov
call
cmp
mov
mov
jn
mov
mov
cmp
jl
lea
lea
mov
mov
sub
xor
mov
mov
sub
mov
cmp
jn
mov
test
jn
jmp
mov
and
mov
add
mov
mov
mov
cmp
jl
mov
mov
mov
mov
mov
cmp
jl
mov
mov
mov
add
jn
test
je
mov
mov
cmp
jl
mov
clt
mov
add
add
add
add
cmp
jn
test
je
mov
call
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
call
lea
lea
jmp
mov
call
xor
mov
call
mov
call
mov
xor
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
test
jn
jmp
mov
xor
call
mov
xor
mov
call
test
je
mov
cmp
mov
jn
mov
jmp
mov
mov
test
je
cmp
jn
mov
cmp
je
mov
jmp
mov
xor
call
mov
call
mov
mov
lea
xor
mov
call
test
je
mov
mov
cmp
jl
mov
mov
test
je
cmp
jg
cmp
je
mov
jmp
mov
call
jmp
mov
add
mov
jmp
mov
mov
jmp
mov
call
jmp
mov
xor
add
mov
test
je
mov
call
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
add
test
je
mov
call
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
call