site = "http://naver.com"

name = site[7:site.find(".")]

print(name[:3] + str(len(name)) + str(name.count("e")) + "!")
