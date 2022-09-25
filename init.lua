--Init other files

de_nenio = {}
de_nenio.modpath = minetest.get_modpath("de_nenio")

dofile(de_nenio.modpath .. "/register_items.lua")
dofile(de_nenio.modpath .. "/recipes.lua")
dofile(de_nenio.modpath .. "/override.lua")
dofile(de_nenio.modpath .. "/sieve.lua")
--dofile(de_nenio.modpath .. "/sieve_fancy.lua") --a fancy version of sieve (uncomplete/WIP)
