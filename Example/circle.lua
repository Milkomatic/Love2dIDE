local circle = class("circle",{
    x = 100,
    y = 50,
    shape = "circle",
})

function circle:init(_x, _y)
    self.x = _x
    self.y = _y
end

return circle
