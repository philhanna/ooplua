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

local abby = Dog:new({name="Abby"})
test(abby)

local eddie = LittleDog:new({name="Eddie"})
test(eddie)
