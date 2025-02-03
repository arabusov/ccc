!BCC_EOS
!BCC_EOS
!BCC_EOS
!BCC_EOS
!BCC_EOS
!BCC_EOS
!BCC_EOS
!BCC_EOS
!BCC_EOS
!BCC_EOS
!BCC_EOS
export	_main
_main:
!BCC_EOS
push	bp
mov	bp,sp
add	sp,*-4
mov	ax,*1
mov	-4[bp],ax
!BCC_EOS
! test/0046.i:19.5: error: undefined structure element
mov	ax,*2
mov	-4[bp],ax
!BCC_EOS
! test/0046.i:20.4: error: undefined structure element
mov	ax,*3
mov	-4[bp],ax
!BCC_EOS
! test/0046.i:21.4: error: undefined structure element
mov	ax,*4
mov	-4[bp],ax
!BCC_EOS
mov	ax,-4[bp]
cmp	ax,*1
je  	.1
.2:
mov	ax,*1
mov	sp,bp
pop	bp
ret
!BCC_EOS
.1:
! test/0046.i:25.22: error: undefined structure element
mov	ax,-4[bp]
cmp	ax,*2
je  	.3
.5:
mov	ax,-4[bp]
cmp	ax,*2
je  	.3
.4:
mov	ax,*2
mov	sp,bp
pop	bp
ret
!BCC_EOS
.3:
mov	ax,-4[bp]
cmp	ax,*3
je  	.6
.7:
mov	ax,*3
mov	sp,bp
pop	bp
ret
!BCC_EOS
.6:
mov	ax,-4[bp]
cmp	ax,*4
je  	.8
.9:
mov	ax,*4
mov	sp,bp
pop	bp
ret
!BCC_EOS
.8:
xor	ax,ax
mov	sp,bp
pop	bp
ret
!BCC_EOS
.data
.bss
.fail	4 errors detected

! 4 errors detected
