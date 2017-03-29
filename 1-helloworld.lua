#!/usr/local/bin/lua

print("Hello World!")
print("www.w3cscholl.cc")

--单行注释
--[[
    多行注释
--]]

print(type("Hello World"))      -->string
print(type(10))                 -->number
print(type(print))              -->function
print(type(type))               -->function
print(type(true))               -->boolean
print(type(nil))                -->nil
print(type(type(X)))            -->string

print("--------------")

tab1 = {key1="val1", key2="val2", "val3"}

for k, v in pairs(tab1) do
    print(k .. "-"..v)
end
tab1.key1 = nil
for k, v in pairs(tab1) do
    print(k .. "-" .. v)
end

-- boolean
print("------------")
print(type(true))
print(type(false))
print(type(nil))

if false or nil then
    print("至少有一个是 true")
else
    print("false 和 nil 都为false")
end

print("-------------")
print(type(2))
print(type(2.2))
print(type(0.2))
print(type(0.2e-1))
print(type(4.56576768))

print("---------------")
print('aaaaaaaaaaaaa')
print('bbbbbbbbbbbbb')
html = [[
    <html>
    <head></head>
    <body>
        <a href="http://www.w3cscholl.cc/">w3cscholl菜鸟教程</a>
    </body>
    </html>
]]
print(html)

print("2"+6)
print("2" + "6")
--字符串连接
print("a" .. "b")
print(157 .. 428)
print("#计算字符串长度")
len = "www.w3cscholl.cc"
print(#len)
print(#"www.w3cscholl.cc")

-- 创建一个空的 table
local tab1 = {}

-- 直接初始表
local tab2 = {"apple", "pear", "orange", "grape"}
print(tab2)

a = {}
a["key"] = "value"
key = 10
a[key] = 22
a[key] = a[key] + 11
for k, v in pairs(a) do
    print(k .. " : " .. v)
end

for key, val in pairs(tab2) do
    print("Key", key)
end

a3 = {}
for i=1,10 do
    a3[i] = i
end

a3["key"] = "val"
print(a3["key"])
print(a3["none"])

-- function
function factorial(n)
    if n ==0 then
        return 1
    else
        return n * factorial(n-1)
    end
end

print("-------function-------")
print(factorial(5))
factorial2 = factorial
print(factorial2(5))