local S = minetest.get_translator(minetest.get_current_modname())

minetest.register_craftitem("de_nenio:bucket_cobble", {
   description = S("Cobble Bucket"),
   inventory_image = "de_nenio_bucket_cobble.png",
})

--Hammers

minetest.register_tool("de_nenio:hammer_wood", {
	description = S("Wood Hammer"),
	inventory_image = "de_nenio_hammer_wood.png",
	tool_capabilities = {
		full_punch_interval = 1.5,
		max_drop_level=0,
		groupcaps={
			hammerable = {times={[3]=1.60}, uses=10, maxlevel=1},
		},
		damage_groups = {fleshy=3},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {hammer = 1}
})

minetest.register_tool("de_nenio:hammer_stone", {
	description = S("Stone Hammer"),
	inventory_image = "de_nenio_hammer_stone.png",
	tool_capabilities = {
		full_punch_interval = 1.6,
		max_drop_level=0,
		groupcaps={
			hammerable = {times={[2]=2.0, [3]=1.00}, uses=20, maxlevel=1},
		},
		damage_groups = {fleshy=4},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {hammer = 1}
})

minetest.register_tool("de_nenio:hammer_bronze", {
	description = S("Bronze Hammer"),
	inventory_image = "de_nenio_hammer_bronze.png",
	tool_capabilities = {
		full_punch_interval = 1.3,
		max_drop_level=1,
		groupcaps={
			hammerable = {times={[1]=4.50, [2]=1.80, [3]=0.90}, uses=20, maxlevel=2},
		},
		damage_groups = {fleshy=5},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {hammer = 1}
})

minetest.register_tool("de_nenio:hammer_steel", {
	description = S("Steel Hammer"),
	inventory_image = "de_nenio_hammer_steel.png",
	tool_capabilities = {
		full_punch_interval = 1.3,
		max_drop_level=3,
		groupcaps={
			hammerable = {times={[1]=4.00, [2]=1.60, [3]=0.80}, uses=20, maxlevel=2},
		},
		damage_groups = {fleshy=5},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {hammer = 1}
})

minetest.register_tool("de_nenio:hammer_mese", {
	description = S("Mese Hammer"),
	inventory_image = "de_nenio_hammer_mese.png",
	tool_capabilities = {
		full_punch_interval = 1.2,
		max_drop_level=3,
		groupcaps={
			hammerable = {times={[1]=2.4, [2]=1.2, [3]=0.60}, uses=20, maxlevel=3},
		},
		damage_groups = {fleshy=6},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {hammer = 1}
})

minetest.register_tool("de_nenio:hammer_diamond", {
	description = S("Diamond Hammer"),
	inventory_image = "de_nenio_hammer_diamond.png",
	tool_capabilities = {
		full_punch_interval = 1.2,
		max_drop_level=3,
		groupcaps={
			hammerable = {times={[1]=2.0, [2]=1.0, [3]=0.50}, uses=30, maxlevel=3},
		},
		damage_groups = {fleshy=6},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {hammer = 1}
})
