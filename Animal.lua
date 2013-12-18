local Animal = {}

function Animal:new(o)
   o = o or {}
   setmetatable(o, self)
   self.__index = self
   self:init(o)
   return o
end

function Animal:init(o)
   o.type = "Animal"
   o.sound = "Generic sound"
end

function Animal:getType()
   return self.type
end

function Animal:getSound()
   return self.sound
end

function Animal:getName()
   return self.name
end

return Animal
