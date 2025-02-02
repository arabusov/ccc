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
mov	bx,6[bp]
inc	bx
mov	6[bp],bx
mov	si,4[bp]
inc	si
mov	4[bp],si
mov	al,-1[bx]
mov	-1[si],al
mov	ax,8[bp]
dec	ax
mov	8[bp],ax
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
lea	bx,-6[bp]
push	bx
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

! 0 errors detected
