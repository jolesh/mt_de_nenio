local S = minetest.get_translator(minetest.get_current_modname())

minetest.register_craftitem("de_nenio:glass_bottle_water", {
   description = S("Water Glass Bottle"),
   inventory_image = "de_nenio_glass_bottle_water.png",
})

minetest.register_node("de_nenio:water_collector_empty", {
	description = S("Empty Water Collector"),
	drawtype = "nodebox",
    tiles = {
          "default_stone.png", -- TOP
          "default_stone.png",  -- BOT
          "default_stone.png",  -- LEFT
          "default_stone.png",  -- RIGHT
          "default_stone.png",  -- FRONT
          "default_stone.png",  -- BACK
    },
	node_box = {
		type = "fixed",
		fixed = {
			{-0.3750, -0.5000, -0.4375,  0.3750, -0.1875, -0.3125}, --Wände N
			{-0.4375, -0.5000, -0.3750, -0.3125, -0.1875,  0.3750}, --Wände O
			{ 0.3750, -0.5000,  0.4375, -0.3750, -0.1875,  0.3125}, --Wände S
			{ 0.4375, -0.5000,  0.3750,  0.3125, -0.1875, -0.3750}, --Wände W
			{-0.3750, -0.5000, -0.3750,  0.3750, -0.3750,  0.3750}, --Boden
			{-0.1250, -0.5000, -0.1250,  0.1250,  1.5000,  0.1250}, --Colum
		},
	},
	groups = {choppy = 2, oddly_breakable_by_hand = 1},
	--sounds = metal_sounds,

   on_construct = function(pos)
      local timer = minetest.get_node_timer(pos)
      timer:start(600) -- in seconds
   end,

   on_timer = function(pos)
      minetest.set_node(pos, { name = "de_nenio:water_collector_ready" })
      minetest.chat_send_all("The barrel is ready now!")
      return false
   end
})

minetest.register_node("de_nenio:water_collector_ready", {
	description = S("Full Water Collector"),
	drawtype = "nodebox",
    tiles = {
          "de_nenio_water_collector_ready.png", -- TOP
          "default_stone.png",  -- BOT
          "default_stone.png",  -- LEFT
          "default_stone.png",  -- RIGHT
          "default_stone.png",  -- FRONT
          "default_stone.png",  -- BACK
    },
	node_box = {
		type = "fixed",
		fixed = {
			{-0.3750, -0.5000, -0.4375,  0.3750, -0.1875, -0.3125}, --Wände N
			{-0.4375, -0.5000, -0.3750, -0.3125, -0.1875,  0.3750}, --Wände O
			{ 0.3750, -0.5000,  0.4375, -0.3750, -0.1875,  0.3125}, --Wände S
			{ 0.4375, -0.5000,  0.3750,  0.3125, -0.1875, -0.3750}, --Wände W
			{-0.3750, -0.5000, -0.3750,  0.3750, -0.3750,  0.3750}, --Boden
			{-0.1250, -0.5000, -0.1250,  0.1250,  1.5000,  0.1250}, --Colum
		},
	},
	groups = {choppy = 2, oddly_breakable_by_hand = 1},
	--sounds = metal_sounds,

   --[[
	selection_box = {
		type = "fixed",
		fixed = {
--			{-0.5, -0.5, -0.5, 0.5, 0.5, 0.5}, -- ganze Block
			{-0.3750, -0.4375, -0.4375,  0.3750,  0.5000, -0.3125}, --Wände N
			{-0.4375, -0.4375, -0.3750, -0.3125,  0.5000,  0.3750}, --Wände O
			{ 0.3750, -0.4375,  0.4375, -0.3750,  0.5000,  0.3125}, --Wände S
			{ 0.4375, -0.4375,  0.3750,  0.3125,  0.5000, -0.3750}, --Wände W
			{-0.3750, -0.5000, -0.3750,  0.3750,  0.5000,  0.3750}, --Boden
		}
	},]]

    on_rightclick = function(pos, node, clicker, itemstack, pointed_thing)
        if clicker:is_player() then
           local nodename = itemstack:get_name()
           if nodename:match("vessels:glass_bottle") then
             if not minetest.settings:get_bool("creative_mode") then
                 itemstack:take_item()
            end
            minetest.swap_node(pos, { name = "de_nenio:water_collector_empty" })
            local timer = minetest.get_node_timer(pos)
            timer:start(600) -- in seconds
            local inv = clicker:get_inventory()
            if not inv then
                 minetest.add_item(clicker:get_pos(), {name = "de_nenio:glass_bottle_water"})
                 return
            end
            remaining = inv:add_item("main", {name = "de_nenio:glass_bottle_water"})
            if remaining:is_empty() then
               minetest.chat_send_player(clicker:get_player_name(), "Sie haben Post!")
            else
                 minetest.add_item(clicker:get_pos(), {name = "de_nenio:glass_bottle_water"})
            end
            end
        end
    end,
})
