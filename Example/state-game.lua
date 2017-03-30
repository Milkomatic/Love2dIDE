tiny = require("tiny")

local game = {}
local drawWorld = tiny.world(require("circle"),require("block"), require("drawSystem"))

function game:enter()

end

function game:update(dt)
end

function game:draw()
    drawWorld:update()
end

return game