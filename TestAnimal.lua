#! /usr/bin/lua

local tf = require("TableFormatter")
local Animal = require("Animal")
print("Animal = " .. tostring(Animal), tf.tostring(Animal))

local cow = Animal:new({name="Bossy"})
print("cow = " .. tostring(cow), tf.tostring(cow))
print("getmetatable(cow) = " .. tostring(getmetatable(cow)), tf.tostring(getmetatable(cow)))
