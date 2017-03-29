tiny = require("tiny")
local Entities = require "entityHolder"

local game = {}
local world = tiny.world(require("circle"), require("block"), require("drawSystem"))

function game:enter()
    Entities.clear()
    Entities.loadGame()
end

function game:update(dt)
    world.update(dt)
end

function game:draw()
    --Entities.draw()
end

return game