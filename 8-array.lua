array = {"Lua", "Tutorial"}

print(#array)
for i=0,2 do
    print(array[i])
end

array = {}

for i=-2, 2 do
    array[i] = i * 2
end

for i=-2,2 do
    print(array[i])
end

array = {1, 2, 3, 4,5, 6}
a = table.concat(array,"-",2, 6)
print(a)
table.insert(array, 7, 7)
print(table.concat(array, "-"))
table.sort(array)
print(table.concat(array, "-"))

function cmp(num1, num2)
    if(num1<num2) then
        return false
    else
        return true
    end
end

table.sort(array, cmp)
print(table.concat(array, "-"))

