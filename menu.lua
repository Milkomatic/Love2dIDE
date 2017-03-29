require "imgui"

menu = {};

function menu:draw()
    if imgui.BeginMainMenuBar() then
        if imgui.BeginMenu("File") then
            self._fileMenu()
            imgui.EndMenu()
        end
        if imgui.BeginMenu("Window") then
            --self._windowMenu()
            imgui.EndMenu()
        end
        if imgui.BeginMenu("Help") then
            --self._helpMenu()
            imgui.EndMenu()
        end
        imgui.EndMainMenuBar()
    end
end

function menu:_fileMenu()
    if imgui.MenuItem("New") then 
    end
    if imgui.BeginMenu("Open", "Ctrl+O") then 
        menu._openFileMenu()
        imgui.EndMenu()
    end
    if imgui.MenuItem("Save", "Ctrl+S")then 
    end
    if imgui.MenuItem("Save As..") then 
    end
end

function menu:_openFileMenu()
    files = love.filesystem.getDirectoryItems( "" )
    for i, file in ipairs(files) do
        if imgui.MenuItem(file) then
            --open file
        end
    end
end

return menu