Gamestate = require "hump.gamestate"
local game = require "state-game"


local menu = {} -- previously: Gamestate.new()

function menu:draw()
    love.graphics.print("Press Enter to continue", 10, 10)
end

function menu:keyreleased(key, code)
    if key == 'return' then
        Gamestate.switch(game)
    end
end

function love.load()
    Gamestate.registerEvents()
    Gamestate.switch(menu)
end