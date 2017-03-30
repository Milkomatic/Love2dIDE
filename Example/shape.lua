local comp = {}

--@_x: the x posision @_y: the y posision @_message: the message to display
function comp.init(_x, _y, _shape)
    local new = {    
        x = _x,
        y = _y,
        --circle or square
        shape = _shape
    }
    function new:inspecterGUI()
    end

    function new:draw()
        love.graphics.setColor( 255, 255, 255, 255 )
        if self.shape == "circle" then
            love.graphics.circle("fill", self.x, self.y, 20)
        end
        if self.shape == "square" then
            love.graphics.rectangle("fill", self.x, self.y, 40, 40)
        end
        --love.graphics.setColor( 0, 0, 0, 255 )
    end

    return new
end

return comp