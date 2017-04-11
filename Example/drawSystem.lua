local drawSystem = tiny.processingSystem()
drawSystem.filter = tiny.requireAll("shape")

function drawSystem:process(e, dt)
    love.graphics.setColor( 255, 255, 255, 255 )
    if e.shape == "circle" then
        love.graphics.circle("fill", e.x, e.y, 20)
    end
    if e.shape == "square" then
        love.graphics.rectangle("fill", e.x, e.y, 40, 40)
    end
end

return drawSystem