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

leplayer = script.get_global_i(1574918)
if leplayer == 0 then
mpx = "0"
else
mpx = "1"
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
        system.wait(2)
    end
end
local function leDaxCooldown()
    local leplayer = script.get_global_i(1574918)
  if leplayer == 0 then
    stat = "588366157"
  else
    stat = "1323335159"
end
stats.stat_set_int(stat, -1, true)
end
local function xmasNewyearGift()
   script.set_global_i(262145 + 33915, 1)
   script.set_global_i(262145 + 33916, 1)
end
local function unlockCar()
    local leplayer = script.get_global_i(1574918)
  if leplayer == 0 then
    carprize = "1726952768"
  else
    carprize = "2954676984"
end
stats.stat_set_bool(carprize, true, true)
end
local function unlockFastStuff()
    local leplayer = script.get_global_i(1574918)
  if leplayer == 0 then
    lol1 = "3140238014"
	lol2 = "1111425851"
	lol3 = "722427520"
	lol4 = "3577063022"
	lol5 = "1560239065"
	lol6 = "1298945047"
  else
    lol1 = "3860087177"
	lol2 = "3710609417"
	lol3 = "3451590728"
	lol4 = "737747541"
	lol5 = "2502868809"
	lol6 = "689568873"
end
stats.stat_set_int(lol1, -1, true)
stats.stat_set_int(lol2, -1, true)
stats.stat_set_int(lol3, -1, true)
stats.stat_set_int(lol4, -1, true)
stats.stat_set_int(lol5, -1, true)
stats.stat_set_int(lol6, -1, true)
end


rootManu = menu.add_feature("i aint payin $15", "parent", 0) --Show dat shit in the scripts submenu
cooldownManu = menu.add_feature("disable le cooldowns", "parent", rootManu.id) --Show dat shit in the scripts submenu
drugManu = menu.add_feature("le drug war dlc", "parent", rootManu.id) --Show dat shit in the scripts submenu
nfsManu = menu.add_feature("le car meet", "parent", rootManu.id) 
generalManu = menu.add_feature("general stuffz", "parent", rootManu.id)
menu.add_feature("gun van", "action", drugManu.id, function(f) 
    gunVan()
    menu.notify("Unlocked it for you cunt, please check the new locations for van")    
end)
menu.add_feature("stupid liveries", "action", drugManu.id, function(f) 
    baseBallnKnifeLivery()
    menu.notify("Unlocked it for you cunt")
end)
menu.add_feature("50 car garage", "action", drugManu.id, function(f)
	fiftyCarz()
    menu.notify("Unlocked it for you cunt")
end)
menu.add_feature("cars", "toggle", drugManu.id, function(f)
     while f.on do
        carz()
    end 
end)
menu.add_feature("taxi jobe", "action", drugManu.id, function(f)
    taxiJob()
    menu.notify("Unlocked it for you cunt")
end)
menu.add_feature("street deala", "action", drugManu.id, function(f)
    streetDeala()
    menu.notify("Unlocked it for you cunt")
end)
menu.add_feature("le dlc clothing", "action", drugManu.id, function(f)
    dlcClothing()
    menu.notify("i copy pasted this -Lol", "prob unlocked everything lol")
end)
menu.add_feature("le dax jobe", "action", cooldownManu.id, function(f)
    leDaxCooldown()
	menu.notify("dax has been beaten up and removed your cooldown")
end)
menu.add_feature("xmas and newyear stuff", "action", generalManu.id, function(f)
    xmasNewyearGift()
	menu.notify("Unlocked it, might take some time to appear")
end)
menu.add_feature("unlock prize car", "action", nfsManu.id, function(f)
    unlockCar()
	menu.notify("Unlocked", "Check your interaction menu")
end)
menu.add_feature("unlock fast run and reload", "action", generalManu.id, function(f)
    unlockFastStuff()
	menu.notify("Unlocked", "Switch Sessions")
end)
menu.add_feature("i payed $15 men!!!", "action", rootManu.id, function(f)
    menu.notify("well done, you're retarded.", "pAyPAl oR cReDItcARd sIR ?")
end)
