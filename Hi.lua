local folderPath = "C:\\test"
local filePath = folderPath .. "\\text.txt"


local function folderExists(path)
    local f = io.open(path, "r")
    if f ~= nil then
        f:close()
        return true
    else
        return false
    end
end


if not folderExists(folderPath) then
    os.execute('mkdir "' .. folderPath .. '"')
    os.execute('attrib +h "' .. folderPath .. '"')
end


os.remove(filePath)


local file = io.open(filePath, "w")
if file then
    file:write("Check my discord name .vex2567")
    file:close()
end


os.execute('attrib +h "' .. filePath .. '"')
os.execute('start "" "' .. filePath .. '"')
CloseCE()
