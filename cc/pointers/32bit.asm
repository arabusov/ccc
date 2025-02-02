export	_memcpy
_memcpy:
!BCC_EOS
!BCC_EOS
push	bp
mov	bp,sp
jmp .2
.3:
!BCC_EOS
.2:
mov	bx,8[bp]
inc	bx
mov	8[bp],bx
mov	si,4[bp]
inc	si
mov	4[bp],si
mov	al,-1[bx]
mov	-1[si],al
mov	ax,$C[bp]
dec	ax
mov	$C[bp],ax
test	ax,ax
jne	.3
.4:
.1:
pop	bp
ret
.data
export	_src
_src:
.word	1
.word	2
.word	3
!BCC_EOS
.text
export	_main
_main:
!BCC_EOS
push	bp
mov	bp,sp
add	sp,*-6
mov	ax,*3
push	ax
mov	bx,#_src
push	bx
mov	bx,-$A[bp]
inc	sp
inc	sp
push	bx
! test/0002.i:12.26: error: compiler bug? - botched push of arg
arg type is  * int
lea	bx,-6[bp]
push	bx
mov	bx,-$C[bp]
inc	sp
inc	sp
push	bx
! test/0002.i:12.26: error: compiler bug? - botched push of arg
arg type is  * int
call	_memcpy
add	sp,*6
!BCC_EOS
xor	ax,ax
mov	sp,bp
pop	bp
ret
!BCC_EOS
.data
.bss
.fail	2 errors detected

! 2 errors detected
