from random import randint

cnt=0

for i in range(1,51):
    customer=randint(5,51)
    
    if(5<=customer<=15):
        print("[O] {0}번째 손님 (소요시간 : {1}분)".format(i,customer))
        cnt+=1
    else:
        print("[ ] {0}번째 손님 (소요시간 : {1}분)".format(i,customer))
    

print("\n총 탑승 승객 : {0} 분".format(cnt))