#! /usr/bin/lua

local tf = require("TableFormatter")
local Animal = require("Animal")
local Dog = require("Dog")

local function test(o)
   print("type=" .. tostring(o:getType()))
   print("name=" .. tostring(o:getName()))
   print("sound=" .. tostring(o:getSound()))
end

--[[
local cow = Animal:new({name="Bossy"})
print("cow = " .. tostring(cow), tf.tostring(cow))
print("getmetatable(cow) = " .. tostring(getmetatable(cow)), tf.tostring(getmetatable(cow)))
test(cow)
--]]

print("Animal = " .. tostring(Animal), tf.tostring(Animal))

local abby = Dog:new({name="Abby"})
print("abby = " .. tostring(abby), tf.tostring(abby))
print("getmetatable(abby) = " .. tostring(getmetatable(abby)), tf.tostring(getmetatable(abby)))
--test(abby)

print("Animal = " .. tostring(Animal), tf.tostring(Animal))
print("getmetatable(Animal) = " .. tostring(getmetatable(Animal)), tf.tostring(getmetatable(Animal)))

print("Dog = " .. tostring(Dog), tf.tostring(Dog))
print("getmetatable(Dog) = " .. tostring(getmetatable(Dog)), tf.tostring(getmetatable(Dog)))
