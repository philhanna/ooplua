#! /usr/bin/lua

local tf = require("TableFormatter")
local Animal = require("Animal")
local Dog = require("Dog")
local LittleDog = require("LittleDog")

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
-- print("abby = " .. tostring(abby), tf.tostring(abby))
-- print("getmetatable(abby) = " .. tostring(getmetatable(abby)), tf.tostring(getmetatable(abby)))
test(abby)

local eddie = LittleDog:new({name="Eddie"})
test(eddie)
