def std_weight(height,gender):
    if(gender=="남자"):
        return height*height*22
    else:
        return height*height*21

height=int(input("키를 입력하세요. "))
gender=input("성별을 입력하세요. ")
weight=round(std_weight(height,gender)/10000,2)

print("키 {0}cm {1}의 표준 체중은 {2}kg 입니다. ".format(height,gender,weight))