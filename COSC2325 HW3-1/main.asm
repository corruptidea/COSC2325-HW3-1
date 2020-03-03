.386
.model flat, stdcall
.stack 4096

ExitProcess PROTO, dwExitCode: DWORD

.data
	
	array DWORD 1d, 3d, 5d, 8d, 13d 

.code

main PROC
	
	mov eax, array
	mov ebx, 0d
	mov ecx, LENGTHOF array
	mov esi, 0

	L1:
		add ebx, array[esi]
		add esi, TYPE array
		loop L1

	;Following loop, the sum is stored in ebx


	INVOKE ExitProcess, 0
main ENDP
END main