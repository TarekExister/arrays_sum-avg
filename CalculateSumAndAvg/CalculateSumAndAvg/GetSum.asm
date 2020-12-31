.386
.model flat, c
.code

GetSum		proc
			push ebp
			mov ebp , esp
			mov ecx , [ebp+12]
			cmp ecx, 0
			je quit
			xor eax, eax
			push ebx
			mov ebx, [ebp+8]
			L1:
			add eax, [ebx]
			add ebx, TYPE DWORD
			loop L1
			quit:
			pop ebx
			pop ebp
			ret
GetSum		endp
			end
