minetest.register_craft({
   type = "cooking",
   output = "bucket:bucket_lava",
   recipe = "de_nenio:bucket_cobble",
   cooktime = 100
})

minetest.register_craft({
   output = "de_nenio:bucket_cobble",
   recipe = {
      {"default:cobble", "default:cobble", "default:cobble"},
      {"default:cobble", "bucket:bucket_empty", "default:cobble"},
      {"default:cobble", "default:cobble", "default:cobble"}
   }
})

minetest.register_craft({
   output = "default:cobble",
   recipe = {
      {"de_nenio:pebble", "de_nenio:pebble", "de_nenio:pebble"},
      {"de_nenio:pebble", "de_nenio:pebble", "de_nenio:pebble"},
      {"de_nenio:pebble", "de_nenio:pebble", "de_nenio:pebble"},
   }
})

--Hammers

minetest.register_craft({
	output = 'de_nenio:hammer_wood',
	recipe = {
		{'', 'group:wood', ''},
		{'', 'group:stick', 'group:wood'},
		{'group:stick', '', ''},
	}
})

minetest.register_craft({
	output = 'de_nenio:hammer_stone',
	recipe = {
		{'', 'default:cobble', ''},
		{'', 'group:stick', 'default:cobble'},
		{'group:stick', '', ''},
	}
})

minetest.register_craft({
	output = 'de_nenio:hammer_bronze',
	recipe = {
		{'', 'default:bronze_ingot', ''},
		{'', 'group:stick', 'default:bronze_ingot'},
		{'group:stick', '', ''},
	}
})

minetest.register_craft({
	output = 'de_nenio:hammer_steel',
	recipe = {
		{'', 'default:steel_ingot', ''},
		{'', 'group:stick', 'default:steel_ingot'},
		{'group:stick', '', ''},
	}
})

minetest.register_craft({
	output = 'de_nenio:hammer_mese',
	recipe = {
		{'', 'default:mese_crystal', ''},
		{'', 'group:stick', 'default:mese_crystal'},
		{'group:stick', '', ''},
	}
})

minetest.register_craft({
	output = 'de_nenio:hammer_diamond',
	recipe = {
		{'', 'default:diamond', ''},
		{'', 'group:stick', 'default:diamond'},
		{'group:stick', '', ''},
	}
})
