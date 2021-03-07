	
	.globl _start
	
	.code16
	
_start:
		movw $0x9000, %ax		#ss is the stack segment register. 
		movw &ax, %ss			#ss is used implicity used whenever memory operation
		xorw %sp, %sp			#is done with bp or sp (stack pointer offset) register
								#ss << 4 + sp = physical address
								#We use 0x9000 to "land us in free memory in the lower 1MB region"
								#ss = 0x9000 & sp = 0 is equivalent to 0x9000 << 4 = 0x90000, which
								#is our stack top.
								#We need to define a stack because we need it to make a "call"
								#to a subroutine to print characters to the screen. Without this,
								#we couldn't store the return address.
								
