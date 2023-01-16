-- welcum stuff

CL = "ClownUnlocker"

menu.create_thread(function()
menu.notify("Hello retard welcum to ClownUnlocker please donate", CL, 6, 0x00ff00)
end)

-- some basic checks

if not menu.is_trusted_mode_enabled(1 << 1) then --Trust dem globalz on
    menu.notify("turn dem globalz on")
    menu.exit()
end

local function gunVan()
    for i = 33799, 33799, 1 do
        script.set_global_i(262145 + i, 1)
        system.wait(2)
    end
end
local function baseBallnKnifeLivery()
    for i = 33877, 33877, 1 do
        script.set_global_i(262145 + i, 0)
        system.wait(2)
    end
end
local function fiftyCarz()
    script.set_global_i(262145 + 32702, 1)
    script.set_global_i(262145 + 32688, 0)
end
local function carz()
    for i = 33957, 33972, 1 do
        script.set_global_i(262145 + i, 1)
        script.set_global_i(262145 + 33963, 1)
        system.wait(2)
    end
end
local function taxiJob()
    for i = 33770, 33770, 1 do
        script.set_global_i(262145 + i, 1)
        system.wait(2)
    end
end
local function streetDeala()
    for i = 34062, 34062, 1 do
        script.set_global_i(262145 + i, 1)
        system.wait(2)
    end
end
local function dlcClothing()
           for i = 33973, 34112, 1 do
         script.set_global_i(262145 + i, 1)
        system.wait(10)
    end
end

rootManu = menu.add_feature("i aint payin $15", "parent", 0) --Show dat shit in the scripts submenu
menu.add_feature("gun van", "action", rootManu.id, function(f) 
    gunVan()
    menu.notify("Unlocked it for you cunt, please check the new locations for van")    
end)
menu.add_feature("stupid liveries", "action", rootManu.id, function(f) 
    baseBallnKnifeLivery()
    menu.notify("Unlocked it for you cunt, go to gun van to use them")
end)
menu.add_feature("50 car garage", "action", rootManu.id, function(f)
    fiftyCarz()
    menu.notify("Unlocked it for you cunt")
end)
menu.add_feature("cars", "toggle", rootManu.id, function(f)
     while f.on do
        carz()
    end 
end)
menu.add_feature("taxi jobe", "action", rootManu.id, function(f)
    taxiJob()
    menu.notify("Unlocked it for you cunt")
end)
menu.add_feature("street deala", "action", rootManu.id, function(f)
    streetDeala()
    menu.notify("Unlocked it for you cunt")
end)
menu.add_feature("le dlc clothing", "action", rootManu.id, function(f)
    dlcClothing()
    menu.notify("i copy pasted this -Lol", "prob unlocked everything lol")
end)


menu.add_feature("i paid $15 !!!", "action", rootManu.id, function(f)
    menu.notify("well done, you're retarded.", "pAyPAl oR cReDItcARd sIR ?")
end)
