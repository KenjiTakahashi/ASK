#nah, nah...
1: SBN B B 2 ; B = 0
2: SBN I I 3 ; I = 0, iterator
3: SBN Z Z 4 ; Z = 0
4: SBN Z A 5 ; Z = -A
5: SBN I Z 6 ; I = A, trick to have a copy of A
6: SBN I X l ; I = A - 1
l: SBN B A 7 ; B -= A
7: SBN I X e ; I -= 1, if < 0 -> e
8: SBN P P 9 ; P = 0
9: SBN P X l ; trick to go back to l
e: SBN C C f ; C = 0
f: SBN C B g ; yeah!
