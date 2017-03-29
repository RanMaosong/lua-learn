-- Meta class
Rectangle = {area=0, length=0, breadth = 0}

function Rectangle:new(o, length, breadth)
    o =o or {}
    setmetatable(o, self)
    self.__index = self
    self.length = length or 0
    self.breadth = breadth or 0
    self.area = length * breadth
    return o
end

function Rectangle:printArea()
    print("矩形面积为", self.area)
end

r = Rectangle:new(nil, 10, 20)
print(r.length)
print(r.breadth)
print(r.area)