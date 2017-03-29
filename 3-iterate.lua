print("------ while 循环 -------")

a = 10
while (a<20) do
    print("a 的值为:".. a)
    a = a+1
end

print("--------- for 循环 -------")

function f(x)
    print("function")
    return x*2
end
for i=1,f(3) do
    print(i)
end

for i=10, 1, -1 do
    print(i)
end

days = {"Sunday", "MOnday", "Tuesday", "Wednesday"}
for i, v in ipairs(days) do
    print(i .. v)
end

a = 10
repeat
    print("a的值为:" .. a)
    a = a + 1
until(a > 15)