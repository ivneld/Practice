# cabinet={3:"유재석",100:"김태호"}
# print(cabinet[3])
# print(cabinet[100])

# print(cabinet.get(3))
# print(cabinet.get(5,"사용 가능"))
# print("hi")

# print(3 in cabinet)
# print(5 in cabinet)

cabinet={"A-3":"유재석","B-100":"김태호"}
print(cabinet["A-3"])
print(cabinet["B-100"])

del cabinet["A-3"]
print(cabinet)

print(cabinet.keys())

print(cabinet.values())

print(cabinet.items())

cabinet.clear()
print(cabinet)