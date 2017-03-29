--[[ 函数返回两个值的最大值 --]]

function max(num1, num2) 
    if (num1 > num2) then
        return num1
    else
        return num2
    end
end

print("两值最大为: " .. max(10, 4))
s, e = string.find("ww.runoob.com", "runoob")
print(s, e)


-- 可变参数

function average(...)
    result = 0
    local arg = {...}
    for i,v in ipairs(arg) do
        result = result + v
    end

    print("总共传入" .. #arg .. "个参数")
    return result /#arg
end

print("平均值为", average(10, 5, 3, 4, 5, 6))