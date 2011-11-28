# it is no real ASM still!
      PUSH Y
      POP W
      POP A1
      PUSH X
      SUB
      JMPGTZ yltx
xlty: PUSH X
      POP W
      POP A1
yltx: PUSH A1
      PUSH Z
      SUB
      JMPGTZ end
zltw: PUSH Z
      POP W
end:
