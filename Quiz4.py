from random import *
lst=range(1,21)
lst=list(lst)

winners=sample(lst,4)

print("치킨 당첨자 : ",winners[0])

print("커피 당첨자 : ",winners[1:])

