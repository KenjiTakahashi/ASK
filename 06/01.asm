# it is no real ASM!;D
# a)
PUSH X
PUSH Y
MUL
PUSH Z
SUB
PUSH Z
PUSH Y
MUL
PUSH X
ADD
MUL
POP W
# b)
LOAD X
MUL Y
SUB Z
STORE A1
LOAD Z
MUL Y
ADD X
MUL A1
STORE W
# c)
MOVE A1 X
MUL A1 Y
SUB A1 Z
MOVE A2 Z
MUL A2 Y
ADD A2 X
MUL A1 A2
MOVE W A1
# d)
MUL A1 X Y
ADD A1 A1 Z
MUL A2 Z Y
ADD A2 A2 X
MUL W A1 A2
