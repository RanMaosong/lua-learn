other = {foo=3}
t = setmetatable({}, {__index=other})
print(t.foo)
print(t.bar)

mytable = setmetatable({key1="value1"}, {
    __index = function(mytable, key)
        if key == "key2" then
            return "metatablevalue"
        else
            return nil
        end
    end
})

print(mytable.key1, mytable.key2)

mymetatable = {}
mytable = setmetatable({key1="value1"}, {__newindex = mymetatable})

print(mytable.key1)

mytable.newkey = "新值2"
print(mytable.newkey, mymetatable.newkey)
mytable.key1 = "新值1"
print(mytable.newkey1, mymetatable.newkey1)


function table_maxn(t)
    local mn = 0
    for k, v in pairs(t) do
        if mn<k then
            mn = k
        end
    end
    return mn
end

-- 两表想家操作
mytable = setmetatable({1, 2, 3}, {
    __add = function(mytable, newtable)
        for i=1, table_maxn(newtable) do
            table.insert(mytable, table_maxn(mytable)+1, newtable[i])
        end

        return mytable
    end
})

secondtable = {4, 5, 6}
mytable = mytable + secondtable

for k, v in ipairs(mytable) do
    print(k, v)
end
