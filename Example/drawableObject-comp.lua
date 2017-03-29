local comp = {}

--a list of properties in the componant
comp.prop = {
    x = 0,
    y = 0,
    --circle or square
    shape = "",
}

--the gui in the inspector to edit the componant's properties
function comp:inspecterGUI()
end

--@_x: the x posision @_y: the y posision @_message: the message to display
function comp:_init(_x, _y, _shape,)
    self.x = _x
    self.y = _y
    self.shape = _shape
end

function comp:draw()
    love.graphics.setColor( 255, 255, 255, 255 )
    if self.shape == "circle"
        love.graphics.circle("fill", self.x, self.y, 5)
    end
    if self.shape == "square"
        love.graphics.rectangle("fill", self.x, self.y, 10, 10)
    end
    love.graphics.setColor( 0, 0, 0, 255 )
end

return comp