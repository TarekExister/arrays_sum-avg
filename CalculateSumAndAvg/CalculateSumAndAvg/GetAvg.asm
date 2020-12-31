.386
.model flat, c
.code

GetAvg		proc
			push ebp
			mov ebp , esp
			mov eax , [ebp+8]
			cdq
			idiv DWORD PTR [ebp+12]
			pop ebp
			ret
GetAvg		endp
			end