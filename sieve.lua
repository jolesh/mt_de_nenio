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
         {-0.3125,  0.1250, -0.3125,  0.3125,  0.1250,  0.3125}, --Block
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

minetest.register_craft({
	output = "de_nenio:sieve_empty",
	recipe = {
		{"group:wood", "group:wool", "group:wood"},
		{"group:wood", "",           "group:wood"}
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

	groups = {choppy = 2, oddly_breakable_by_hand = 1},
	--sounds = metal_sounds,

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

	groups = {choppy = 2, oddly_breakable_by_hand = 1},
	sounds = metal_sounds,

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

	groups = {choppy = 2, oddly_breakable_by_hand = 1},
	--sounds = metal_sounds,

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

	groups = {choppy = 2, oddly_breakable_by_hand = 1},
	--sounds = metal_sounds,

   on_rightclick = function(pos, node, clicker, itemstack, pointed_thing)
      if clicker:is_player() then
         minetest.swap_node(pos, { name = "de_nenio:sieve_empty" })
         local gravel_loot = {items = {
            {
               items = {"default:sand"},
            },
            {
               items = {"default:gravel"},
            },
         },}
--[[            max_items = 2,
            items = {
               {
                  items = {"default:sand"},
               },
               {
                  items = {"default:gravel"},
               },
            },
         }]]
         local inv = clicker:get_inventory()
             if not inv then
                 minetest.add_item(clicker:get_pos(), gravel_loot)
                 return
             end
             remaining = inv:add_item("main", gravel_loot)
             if remaining:is_empty() then
                 minetest.chat_send_player(clicker:get_player_name(), "Sie haben Post!")
             else
                 minetest.add_item(clicker:get_pos(), remaining)
             end
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

	groups = {choppy = 2, oddly_breakable_by_hand = 1},
	--sounds = metal_sounds,

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

	groups = {choppy = 2, oddly_breakable_by_hand = 1},
	sounds = metal_sounds,

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

	groups = {choppy = 2, oddly_breakable_by_hand = 1},
	--sounds = metal_sounds,

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

	groups = {choppy = 2, oddly_breakable_by_hand = 1},
	--sounds = metal_sounds,

   on_rightclick = function(pos, node, clicker, itemstack, pointed_thing)
      if clicker:is_player() then
         minetest.swap_node(pos, { name = "de_nenio:sieve_empty" })
         local dirt_loot = {name = "de_nenio:pebble"}
--[[            max_items = 2,
            items = {
               {
                  items = {"default:sand"},
               },
               {
                  items = {"default:dirt"},
               },
            },
         }]]
         local inv = clicker:get_inventory()
             if not inv then
                 minetest.add_item(clicker:get_pos(), dirt_loot)
                 return
             end
             remaining = inv:add_item("main", dirt_loot)
             if remaining:is_empty() then
                 minetest.chat_send_player(clicker:get_player_name(), "Sie haben Post!")
             else
                 minetest.add_item(clicker:get_pos(), remaining)
             end
      end
   end,
})
