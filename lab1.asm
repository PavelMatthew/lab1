.686
.model flat, stdcall

.data

x dw 23
y dw 4
z dw 16

.code

ExitProcess PROTO STDCALL :DWORD

Start:

mov ax, X
rol ax, 3
mov bx, z
mul bx
mov cx, y
sub ax, cx

rol cx, 3
mov bx, X

or ax, bx

exit:
Invoke ExitProcess, ax

End Start
