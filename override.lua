--Override nodes to grind them down

minetest.override_item("default:cobble", {

	groups = {cracky = 3, hammerable = 3, stone = 2},
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
   groups = {crumbly = 2, hammerable = 3, falling_node = 1},
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
