local S = minetest.get_translator(minetest.get_current_modname())

minetest.register_craftitem("de_nenio:bucket_cobble", {
   description = "A bucket full of cobble",
   inventory_image = "de_nenio_bucket_cobble.png",
})

--Override nodes to grind them down

minetest.override_item("default:cobble", {
		drop = {
         max_items = 1,
         items = {
            {
               tool_groups = {"hammer"},
               items = {"default:gravel"},
            },
            {
               items = {"default:cobble"},
            },
         },
      },
})

minetest.override_item("default:gravel", {
		drop = {
         max_items = 1,
         items = {
            {
               tool_groups = {"hammer"},
               items = {"default:sand"},
            },
            {
               items = {"default:gravel"},
            },
         },
      },
})

--Hammers

minetest.register_tool("de_nenio:hammer_diamond", {
	description = S("Diamond Hammer"),
	inventory_image = "de_nenio_hammer_diamond.png",
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=3,
		groupcaps={
			cracky = {times={[1]=2.0, [2]=1.0, [3]=0.50}, uses=30, maxlevel=3},
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
		full_punch_interval = 0.9,
		max_drop_level=3,
		groupcaps={
			cracky = {times={[1]=2.0, [2]=1.0, [3]=0.50}, uses=30, maxlevel=3},
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
		full_punch_interval = 0.9,
		max_drop_level=3,
		groupcaps={
			cracky = {times={[1]=2.0, [2]=1.0, [3]=0.50}, uses=30, maxlevel=3},
		},
		damage_groups = {fleshy=5},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {hammer = 1}
})

minetest.register_tool("de_nenio:hammer_bronze", {
	description = S("Bronze Hammer"),
	inventory_image = "de_nenio_hammer_bronze.png",
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=3,
		groupcaps={
			cracky = {times={[1]=2.0, [2]=1.0, [3]=0.50}, uses=30, maxlevel=3},
		},
		damage_groups = {fleshy=5},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {hammer = 1}
})

minetest.register_tool("de_nenio:hammer_stone", {
	description = S("Stone Hammer"),
	inventory_image = "de_nenio_hammer_stone.png",
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=3,
		groupcaps={
			cracky = {times={[1]=2.0, [2]=1.0, [3]=0.50}, uses=30, maxlevel=3},
		},
		damage_groups = {fleshy=5},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {hammer = 1}
})

minetest.register_tool("de_nenio:hammer_wood", {
	description = S("Wood Hammer"),
	inventory_image = "de_nenio_hammer_wood.png",
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level=3,
		groupcaps={
			cracky = {times={[1]=2.0, [2]=1.0, [3]=0.50}, uses=30, maxlevel=3},
		},
		damage_groups = {fleshy=5},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {hammer = 1}
})
