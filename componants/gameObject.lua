gameObject = {}

gameObject.transform = {
    x = 0, --maybe a vector?
    y = 0,
    z = 0,
    Rotation = 0
}

function gameObject:init()
    --make a new gameobject componant and add it to the entity.
end

function gameObject:move(x, y, z) -- vector
    --add vector to transform location.
end

function gameObject:inspect(){
    --the method to call the inspector GUI
}

return gameObject