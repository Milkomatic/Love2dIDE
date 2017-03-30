local drawSystem = tiny.processingSystem()
drawSystem.filter = tiny.requireAll("shape")

function drawSystem:process(e, dt)
    e.shape:draw()
end

return drawSystem