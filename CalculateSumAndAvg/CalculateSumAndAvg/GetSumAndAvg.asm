.386
.model flat, c
.data
arr DWORD 0,0
.code

GetSumAndAvg	proc
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
				mov arr, eax
				cdq
				idiv dword ptr [ebp+12]
				mov [arr+TYPE DWORD], eax
				xor eax, eax
quit:
				mov eax, offset arr
				pop ebx
				pop ebp
ret
GetSumAndAvg	endp
				end