local lib = {}

function lib:init(name)
    if game.CoreGui:FindFirstChild("UI") ~= nil then
       game.CoreGui["UI"]:Destroy()
    end
    print("sure")
end
