local S = minetest.get_translator(minetest.get_current_modname())

--Empty Sieve

minetest.register_node("de_nenio:sieve_empty", {
	description = S("Sieve"),
	drawtype = "nodebox",
    tiles = {
          "de_nenio_sieve_empty_td.png",  -- TOP
          "de_nenio_sieve_empty_td.png",  -- BOTTOM
          "default_wood.png",  -- LEFT
          "default_wood.png",  -- RIGHT
          "default_wood.png",  -- FRONT
          "default_wood.png",  -- BACK
        },

	node_box = {
		type = "fixed",
		fixed = {
         {-0.4375, -0.5000, -0.4375, -0.3125,  0.0000, -0.3125}, --Leg SW
         { 0.4375, -0.5000, -0.4375,  0.3125,  0.0000, -0.3125}, --Leg SE
         { 0.4375, -0.5000,  0.4375,  0.3125,  0.0000,  0.3125}, --Leg NE
         {-0.4375, -0.5000,  0.4375, -0.3125,  0.0000,  0.3125}, --Leg NW
         {-0.4375,  0.0000, -0.4375, -0.3125,  0.1250,  0.4375}, --Corpse W
         { 0.4375,  0.0000, -0.4375,  0.3125,  0.1250,  0.4375}, --Corpse E
         { 0.4375,  0.0000, -0.4375, -0.3125,  0.1250, -0.3125}, --Corpse S
         { 0.4375,  0.0000,  0.4375, -0.3125,  0.1250,  0.3125}, --Corpse N
         {-0.3125,  0.0000, -0.3125,  0.3125,  0.0000,  0.3125}, --Grid
		},
	},

	selection_box = {
		type = "fixed",
		fixed = {
         {-0.4375, -0.5000, -0.4375, -0.3125,  0.0000, -0.3125}, --Leg SW
         { 0.4375, -0.5000, -0.4375,  0.3125,  0.0000, -0.3125}, --Leg SE
         { 0.4375, -0.5000,  0.4375,  0.3125,  0.0000,  0.3125}, --Leg NE
         {-0.4375, -0.5000,  0.4375, -0.3125,  0.0000,  0.3125}, --Leg NW
         {-0.4375,  0.0000, -0.4375,  0.4375,  0.1250,  0.4375}, --Corpse
		},
	},



	groups = {choppy = 2, oddly_breakable_by_hand = 1},
	--sounds = metal_sounds,

   on_rightclick = function(pos, node, clicker, itemstack, pointed_thing)
      if clicker:is_player() then
          local nodename = itemstack:get_name()
          if nodename:match("default:gravel") then
               if not minetest.settings:get_bool("creative_mode") then
                   itemstack:take_item()
               end
               minetest.swap_node(pos, { name = "de_nenio:sieve_gravel_8" })
           else
             if nodename:match("default:dirt") then
               if not minetest.settings:get_bool("creative_mode") then
                  itemstack:take_item()
               end
               minetest.swap_node(pos, { name = "de_nenio:sieve_dirt_8" })
            else
               minetest.chat_send_player(clicker:get_player_name(), "You need gravel!")
               return itemstack
            end
          end
      end
   end,
})

minetest.register_craftitem("de_nenio:grid_stick", {
   description = S("Stick Grid"),
   inventory_image = "de_nenio_grid_stick.png",
})

minetest.register_craft({
	output = "de_nenio:grid_stick",
	recipe = {
		{"group:stick", "group:stick", "group:stick"},
		{"group:stick", "group:stick", "group:stick"},
      {"group:stick", "group:stick", "group:stick"},
	}
})

minetest.register_craft({
	output = "de_nenio:sieve_empty",
	recipe = {
		{"group:wood", "de_nenio:grid_stick", "group:wood"},
		{"group:wood", "",                    "group:wood"}
	}
})

--Sieves with gravel

minetest.register_node("de_nenio:sieve_gravel_8", {
	description = S("Sieve with gravel"),
	drawtype = "nodebox",
    tiles = {
          "de_nenio_sieve_gravel_t.png",  -- TOP
          "de_nenio_sieve_gravel_b.png",  -- BOTTOM
          "de_nenio_sieve_gravel_8.png",  -- LEFT
          "de_nenio_sieve_gravel_8.png",  -- RIGHT
          "de_nenio_sieve_gravel_8.png",  -- FRONT
          "de_nenio_sieve_gravel_8.png",  -- BACK
        },

	node_box = {
		type = "fixed",
		fixed = {
         {-0.4375, -0.5000, -0.4375, -0.3125,  0.0000, -0.3125}, --Leg SW
         { 0.4375, -0.5000, -0.4375,  0.3125,  0.0000, -0.3125}, --Leg SE
         { 0.4375, -0.5000,  0.4375,  0.3125,  0.0000,  0.3125}, --Leg NE
         {-0.4375, -0.5000,  0.4375, -0.3125,  0.0000,  0.3125}, --Leg NW
         {-0.4375,  0.0000, -0.4375,  0.4375,  0.1250,  0.4375}, --Corpse
         {-0.3125,  0.1250, -0.3125,  0.3125,  0.5000,  0.3125}, --Block
		},
	},

	groups = {choppy = 2, oddly_breakable_by_hand = 1, not_in_creative_inventory = 1},
	--sounds = metal_sounds,

   drop = "de_nenio:sieve_empty",

   on_rightclick = function(pos, node, clicker, itemstack, pointed_thing)
      if clicker:is_player() then
         minetest.swap_node(pos, { name = "de_nenio:sieve_gravel_6" })
      end
   end,

})

minetest.register_node("de_nenio:sieve_gravel_6", {
	description = S("Sieve with gravel"),
	drawtype = "nodebox",
    tiles = {
          "de_nenio_sieve_gravel_t.png",  -- TOP
          "de_nenio_sieve_gravel_b.png",  -- BOTTOM
          "de_nenio_sieve_gravel_6.png",  -- LEFT
          "de_nenio_sieve_gravel_6.png",  -- RIGHT
          "de_nenio_sieve_gravel_6.png",  -- FRONT
          "de_nenio_sieve_gravel_6.png",  -- BACK
        },

	node_box = {
		type = "fixed",
		fixed = {
         {-0.4375, -0.5000, -0.4375, -0.3125,  0.0000, -0.3125}, --Leg SW
         { 0.4375, -0.5000, -0.4375,  0.3125,  0.0000, -0.3125}, --Leg SE
         { 0.4375, -0.5000,  0.4375,  0.3125,  0.0000,  0.3125}, --Leg NE
         {-0.4375, -0.5000,  0.4375, -0.3125,  0.0000,  0.3125}, --Leg NW
         {-0.4375,  0.0000, -0.4375,  0.4375,  0.1250,  0.4375}, --Corpse
         {-0.3125,  0.1250, -0.3125,  0.3125,  0.3750,  0.3125}, --Block
		},
	},

	groups = {choppy = 2, oddly_breakable_by_hand = 1, not_in_creative_inventory = 1},
	--sounds = metal_sounds,

   drop = "de_nenio:sieve_empty",

   on_rightclick = function(pos, node, clicker, itemstack, pointed_thing)
      if clicker:is_player() then
         minetest.swap_node(pos, { name = "de_nenio:sieve_gravel_4" })
      end
   end,
})

minetest.register_node("de_nenio:sieve_gravel_4", {
	description = S("Sieve with gravel"),
	drawtype = "nodebox",
    tiles = {
          "de_nenio_sieve_gravel_t.png",  -- TOP
          "de_nenio_sieve_gravel_b.png",  -- BOTTOM
          "de_nenio_sieve_gravel_4.png",  -- LEFT
          "de_nenio_sieve_gravel_4.png",  -- RIGHT
          "de_nenio_sieve_gravel_4.png",  -- FRONT
          "de_nenio_sieve_gravel_4.png",  -- BACK
        },

	node_box = {
		type = "fixed",
		fixed = {
         {-0.4375, -0.5000, -0.4375, -0.3125,  0.0000, -0.3125}, --Leg SW
         { 0.4375, -0.5000, -0.4375,  0.3125,  0.0000, -0.3125}, --Leg SE
         { 0.4375, -0.5000,  0.4375,  0.3125,  0.0000,  0.3125}, --Leg NE
         {-0.4375, -0.5000,  0.4375, -0.3125,  0.0000,  0.3125}, --Leg NW
         {-0.4375,  0.0000, -0.4375,  0.4375,  0.1250,  0.4375}, --Corpse
         {-0.3125,  0.1250, -0.3125,  0.3125,  0.2500,  0.3125}, --Block
		},
	},

	groups = {choppy = 2, oddly_breakable_by_hand = 1, not_in_creative_inventory = 1},
	--sounds = metal_sounds,

   drop = "de_nenio:sieve_empty",

   on_rightclick = function(pos, node, clicker, itemstack, pointed_thing)
      if clicker:is_player() then
         minetest.swap_node(pos, { name = "de_nenio:sieve_gravel_2" })
      end
   end,
})

minetest.register_node("de_nenio:sieve_gravel_2", {
	description = S("Sieve with gravel"),
	drawtype = "nodebox",
    tiles = {
          "de_nenio_sieve_gravel_t.png",  -- TOP
          "de_nenio_sieve_gravel_b.png",  -- BOTTOM
          "default_wood.png",  -- LEFT
          "default_wood.png",  -- RIGHT
          "default_wood.png",  -- FRONT
          "default_wood.png",  -- BACK
        },

	node_box = {
		type = "fixed",
		fixed = {
         {-0.4375, -0.5000, -0.4375, -0.3125,  0.0000, -0.3125}, --Leg SW
         { 0.4375, -0.5000, -0.4375,  0.3125,  0.0000, -0.3125}, --Leg SE
         { 0.4375, -0.5000,  0.4375,  0.3125,  0.0000,  0.3125}, --Leg NE
         {-0.4375, -0.5000,  0.4375, -0.3125,  0.0000,  0.3125}, --Leg NW
         {-0.4375,  0.0000, -0.4375,  0.4375,  0.1250,  0.4375}, --Corpse
         {-0.3125,  0.1250, -0.3125,  0.3125,  0.1250,  0.3125}, --Block
		},
	},

	groups = {choppy = 2, oddly_breakable_by_hand = 1, not_in_creative_inventory = 1},
	--sounds = metal_sounds,
   drop = {
      max_items = 3,
      items = {
         {
            rarity = 100,
            items = {"default:diamond"}
         },
         {
            rarity = 50,
            items = {"default:mese_crystal"}
         },
         {
            rarity = 20,
            items = {"de_nenio:lump_small_gold"}
         },
         {
            rarity = 10,
            items = {"de_nenio:lump_small_iron"}
         },
         {
            rarity = 10,
            items = {"default:coal_lump"}
         },
         {
            rarity = 5,
            items = {"de_nenio:lump_small_tin"}
         },
         {
            rarity = 5,
            items = {"de_nenio:lump_small_copper"}
         },
         {
            rarity = 5,
            items = {"default:flint"}
         },
      },
   },

   on_rightclick = function(pos, node, clicker, itemstack, pointed_thing)
      if clicker:is_player() then
         minetest.dig_node(pos) -- to get drops
         minetest.place_node(pos, {name = "de_nenio:sieve_empty"})
      end
   end,
})

--Sieves with dirt

minetest.register_node("de_nenio:sieve_dirt_8", {
	description = S("Sieve with dirt"),
	drawtype = "nodebox",
    tiles = {
          "de_nenio_sieve_dirt_t.png",  -- TOP
          "de_nenio_sieve_dirt_b.png",  -- BOTTOM
          "de_nenio_sieve_dirt_8.png",  -- LEFT
          "de_nenio_sieve_dirt_8.png",  -- RIGHT
          "de_nenio_sieve_dirt_8.png",  -- FRONT
          "de_nenio_sieve_dirt_8.png",  -- BACK
        },

	node_box = {
		type = "fixed",
		fixed = {
         {-0.4375, -0.5000, -0.4375, -0.3125,  0.0000, -0.3125}, --Leg SW
         { 0.4375, -0.5000, -0.4375,  0.3125,  0.0000, -0.3125}, --Leg SE
         { 0.4375, -0.5000,  0.4375,  0.3125,  0.0000,  0.3125}, --Leg NE
         {-0.4375, -0.5000,  0.4375, -0.3125,  0.0000,  0.3125}, --Leg NW
         {-0.4375,  0.0000, -0.4375,  0.4375,  0.1250,  0.4375}, --Corpse
         {-0.3125,  0.1250, -0.3125,  0.3125,  0.5000,  0.3125}, --Block
		},
	},

	groups = {choppy = 2, oddly_breakable_by_hand = 1, not_in_creative_inventory = 1},
	--sounds = metal_sounds,

   drop = "de_nenio:sieve_empty",

   on_rightclick = function(pos, node, clicker, itemstack, pointed_thing)
      if clicker:is_player() then
         minetest.swap_node(pos, { name = "de_nenio:sieve_dirt_6" })
      end
   end,

})

minetest.register_node("de_nenio:sieve_dirt_6", {
	description = S("Sieve with dirt"),
	drawtype = "nodebox",
    tiles = {
          "de_nenio_sieve_dirt_t.png",  -- TOP
          "de_nenio_sieve_dirt_b.png",  -- BOTTOM
          "de_nenio_sieve_dirt_6.png",  -- LEFT
          "de_nenio_sieve_dirt_6.png",  -- RIGHT
          "de_nenio_sieve_dirt_6.png",  -- FRONT
          "de_nenio_sieve_dirt_6.png",  -- BACK
        },

	node_box = {
		type = "fixed",
		fixed = {
         {-0.4375, -0.5000, -0.4375, -0.3125,  0.0000, -0.3125}, --Leg SW
         { 0.4375, -0.5000, -0.4375,  0.3125,  0.0000, -0.3125}, --Leg SE
         { 0.4375, -0.5000,  0.4375,  0.3125,  0.0000,  0.3125}, --Leg NE
         {-0.4375, -0.5000,  0.4375, -0.3125,  0.0000,  0.3125}, --Leg NW
         {-0.4375,  0.0000, -0.4375,  0.4375,  0.1250,  0.4375}, --Corpse
         {-0.3125,  0.1250, -0.3125,  0.3125,  0.3750,  0.3125}, --Block
		},
	},

	groups = {choppy = 2, oddly_breakable_by_hand = 1, not_in_creative_inventory = 1},
	--sounds = metal_sounds,

   drop = "de_nenio:sieve_empty",

   on_rightclick = function(pos, node, clicker, itemstack, pointed_thing)
      if clicker:is_player() then
         minetest.swap_node(pos, { name = "de_nenio:sieve_dirt_4" })
      end
   end,
})

minetest.register_node("de_nenio:sieve_dirt_4", {
	description = S("Sieve with dirt"),
	drawtype = "nodebox",
    tiles = {
          "de_nenio_sieve_dirt_t.png",  -- TOP
          "de_nenio_sieve_dirt_b.png",  -- BOTTOM
          "de_nenio_sieve_dirt_4.png",  -- LEFT
          "de_nenio_sieve_dirt_4.png",  -- RIGHT
          "de_nenio_sieve_dirt_4.png",  -- FRONT
          "de_nenio_sieve_dirt_4.png",  -- BACK
        },

	node_box = {
		type = "fixed",
		fixed = {
         {-0.4375, -0.5000, -0.4375, -0.3125,  0.0000, -0.3125}, --Leg SW
         { 0.4375, -0.5000, -0.4375,  0.3125,  0.0000, -0.3125}, --Leg SE
         { 0.4375, -0.5000,  0.4375,  0.3125,  0.0000,  0.3125}, --Leg NE
         {-0.4375, -0.5000,  0.4375, -0.3125,  0.0000,  0.3125}, --Leg NW
         {-0.4375,  0.0000, -0.4375,  0.4375,  0.1250,  0.4375}, --Corpse
         {-0.3125,  0.1250, -0.3125,  0.3125,  0.2500,  0.3125}, --Block
		},
	},

	groups = {choppy = 2, oddly_breakable_by_hand = 1, not_in_creative_inventory = 1},
	--sounds = metal_sounds,

   drop = "de_nenio:sieve_empty",

   on_rightclick = function(pos, node, clicker, itemstack, pointed_thing)
      if clicker:is_player() then
         minetest.swap_node(pos, { name = "de_nenio:sieve_dirt_2" })
      end
   end,
})

minetest.register_node("de_nenio:sieve_dirt_2", {
	description = S("Sieve with dirt"),
	drawtype = "nodebox",
    tiles = {
          "de_nenio_sieve_dirt_t.png",  -- TOP
          "de_nenio_sieve_dirt_b.png",  -- BOTTOM
          "default_wood.png",  -- LEFT
          "default_wood.png",  -- RIGHT
          "default_wood.png",  -- FRONT
          "default_wood.png",  -- BACK
        },

	node_box = {
		type = "fixed",
		fixed = {
         {-0.4375, -0.5000, -0.4375, -0.3125,  0.0000, -0.3125}, --Leg SW
         { 0.4375, -0.5000, -0.4375,  0.3125,  0.0000, -0.3125}, --Leg SE
         { 0.4375, -0.5000,  0.4375,  0.3125,  0.0000,  0.3125}, --Leg NE
         {-0.4375, -0.5000,  0.4375, -0.3125,  0.0000,  0.3125}, --Leg NW
         {-0.4375,  0.0000, -0.4375,  0.4375,  0.1250,  0.4375}, --Corpse
         {-0.3125,  0.1250, -0.3125,  0.3125,  0.1250,  0.3125}, --Block
		},
	},

	groups = {choppy = 2, oddly_breakable_by_hand = 1, not_in_creative_inventory = 1},
	--sounds = metal_sounds,

   drop = {
      max_items = 5,
      items = {
         {
            rarity = 50,
            items = {"default:acacia_sapling"}
         },
         {
            rarity = 50,
            items = {"default:aspen_sapling"}
         },
         {
            rarity = 50,
            items = {"default:junglesapling"}
         },
         {
            rarity = 50,
            items = {"default:emergent_jungle_sapling"}
         },
         {
            rarity = 50,
            items = {"default:pine_sapling"}
         },
         {
            rarity = 50,
            items = {"default:sapling"}
         },
         {
            rarity = 50,
            items = {"default:blueberry_bush_sapling"}
         },
         {
            rarity = 50,
            items = {"default:acacia_bush_sapling"}
         },
         {
            rarity = 50,
            items = {"default:pine_bush_sapling"}
         },
         {
            rarity = 50,
            items = {"default:bush_sapling"}
         },
         {
            rarity = 20,
            items = {"farming:seed_cotton"}
         },
         {
            rarity = 20,
            items = {"farming:seed_wheat"}
         },
         {
            rarity = 5,
            items = {"de_nenio:pebble"}
         },
         {
            rarity = 2,
            items = {"de_nenio:pebble"}
         },
         {
            items = {"de_nenio:pebble 3"}
         },
      },
   },
   on_rightclick = function(pos, node, clicker, itemstack, pointed_thing)
      if clicker:is_player() then
         minetest.dig_node(pos) -- to get drops
         minetest.place_node(pos, {name = "de_nenio:sieve_empty"})
      end
   end,
})
