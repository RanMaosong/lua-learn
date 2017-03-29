print(string.upper("aaaa"))
print(string.lower("AAAA"))
print(string.gsub("aaaa", "a", "z", 3))     --替换
print(string.find("Hello Lua user", "Lua", 1))
print(string.reverse("Lua"))

print(string.format("the vale is:%d", 4))
a = string.char(97, 98, 99, 100)
print(a)
a = string.byte("abcd", 4)
print(a)
a = string.byte("abcd")
print(a)

print(string.len("abc"))
print(#"abc")
print(string.rep("abcd", 3))