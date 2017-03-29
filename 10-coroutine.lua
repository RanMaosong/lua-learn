-- coroutine_test.lua 文件

co = coroutine.create(
    function(i)
        print(i)
    end
)

coroutine.resume(co, 1)                 -- 1
print(coroutine.status(co))             -- dead


co = coroutine.wrap(
    function(i)
        print(i)
    end
)

co(1)

print("------------------")

co2 = coroutine.create(
    function()
        for i=1, 10 do
            print(i)
            if i == 3 then
                print(coroutine.status(co2))
                print(coroutine.running())
            end
            coroutine.yield()
        end
    end
)

coroutine.resume(co2)
coroutine.resume(co2)
coroutine.resume(co2)

print(coroutine.status(co2))
print(coroutine.running())
print("-----------------")


function foo(a)
    print("foo函数输出", a)
    return coroutine.yield(2 * a)
end

co = coroutine.create(
    function(a, b)
        print("第一次输出", a, b)
        local r = foo(a + 1)
    end
)

local newProductor

function productor()
    local i = 0
    while true do
        i = i + 1
        send(i)
    end
end

function consumer()
    while true do
        local i = receive()
        print(i)
    end
end

function receive()
    local status, value = coroutine.resume(newProductor)
    return value
end

function send(x)
    coroutine.yield(x)
end


newProductor = coroutine.create(productor)
consumer

