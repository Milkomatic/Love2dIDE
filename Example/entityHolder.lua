local circle = require "cirlce"
local block = require "block"

local holder = {
    block = {},
    circle = {}
}

function holder:loadGame()
    self.block = block
    self.circle = circle
end

function holder:clear()
    holder = {}
end

return holder