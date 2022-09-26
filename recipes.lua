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

--Fill water from bucket to bottles
minetest.register_craft({
   output = "de_nenio:glass_bottle_water 8",
   recipe = {
      {"vessels:glass_bottle", "vessels:glass_bottle", "vessels:glass_bottle"},
      {"vessels:glass_bottle", "bucket:bucket_water", "vessels:glass_bottle"},
      {"vessels:glass_bottle", "vessels:glass_bottle", "vessels:glass_bottle"},
   },
   replacements = {{"bucket:bucket_water", "bucket:bucket_empty"}},
})

--Fill water from bottles to bucket
minetest.register_craft({
   output = "bucket:bucket_water",
   recipe = {
      {"de_nenio:glass_bottle_water", "de_nenio:glass_bottle_water", "de_nenio:glass_bottle_water"},
      {"de_nenio:glass_bottle_water", "bucket:bucket_empty", "de_nenio:glass_bottle_water"},
      {"de_nenio:glass_bottle_water", "de_nenio:glass_bottle_water", "de_nenio:glass_bottle_water"},
   },
   replacements = {{"de_nenio:glass_bottle_water", "vessels:glass_bottle 8"}},
})

minetest.register_craft({
   type = "shapeless",
   output = "default:clay 2",
   recipe = {"default:sand", "bucket:bucket_water", "default:dirt"},
   replacements = {{"bucket:bucket_water", "bucket:bucket_empty"}},
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
