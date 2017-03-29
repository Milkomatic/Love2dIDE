local drawSystem = tiny.processingSystem()
drawSystem.filter = tiny.requireAll("drawableObject")

function drawSystem:process(e, dt)
    e:draw()
end

return drawSystem