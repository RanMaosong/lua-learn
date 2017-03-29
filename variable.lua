a = 5               -- 全局变量
local b = 5         --局部变量


function joke()
    c = 5           --全局变量
    local d = 6     --局部变量
end

joke()
print(c, d)

do
    local a = 6     --局部变量
    b = 6           --全局变量
    print(a, b)
end
print(a, b)

a, b, c = 0, 1
print(a, b, c)

a, b = a+1, b+1, b+2
print(a, b)

a, b, c =0
print(a, b, c)

site = {}
site["key"] = "www.w3cscholl.cc"
print("site['key']: " .. site["key"])
print(site.key)