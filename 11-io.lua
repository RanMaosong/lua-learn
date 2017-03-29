-- 以只读方式打开文件
file = io.open("./test.lua", "r")
-- 设置默认输入文件为test.lua
io.input(file)

-- 输出文件第一行
print(io.read())

-- 关闭打开文件
io.close(file)

file = io.open("./test.lua", "a")

io.output(file)

io.write("\n-- test.lua 文件末尾注释")

io.close(file)