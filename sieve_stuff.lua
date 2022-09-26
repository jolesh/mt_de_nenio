local S = minetest.get_translator(minetest.get_current_modname())

--Items

---From dirt

minetest.register_craftitem("de_nenio:pebble", {
   description = S("Pebble"),
   inventory_image = "de_nenio_pebble.png",
})

---From gravel

minetest.register_craftitem("de_nenio:lump_small_copper", {
   description = S("Small Copper Lump"),
   inventory_image = "de_nenio_lump_small_copper.png",
})

minetest.register_craftitem("de_nenio:lump_small_tin", {
   description = S("Small Tin Lump"),
   inventory_image = "de_nenio_lump_small_tin.png",
})

minetest.register_craftitem("de_nenio:lump_small_iron", {
   description = S("Small Iron Lump"),
   inventory_image = "de_nenio_lump_small_iron.png",
})

minetest.register_craftitem("de_nenio:lump_small_gold", {
   description = S("Small Gold Lump"),
   inventory_image = "de_nenio_lump_small_gold.png",
})


--Recipes

---From dirt

minetest.register_craft({
   output = "default:cobble",
   recipe = {
      {"de_nenio:pebble", "de_nenio:pebble", "de_nenio:pebble"},
      {"de_nenio:pebble", "de_nenio:pebble", "de_nenio:pebble"},
      {"de_nenio:pebble", "de_nenio:pebble", "de_nenio:pebble"},
   }
})


---From gravel

minetest.register_craft({
   type = "shapeless",
   output = "default:copper_lump",
   recipe = {"de_nenio:lump_small_copper", "de_nenio:lump_small_copper",
      "de_nenio:lump_small_copper", "de_nenio:lump_small_copper"},
})

minetest.register_craft({
   type = "shapeless",
   output = "default:tin_lump",
   recipe = {"de_nenio:lump_small_tin", "de_nenio:lump_small_tin",
      "de_nenio:lump_small_tin", "de_nenio:lump_small_tin"},
})

minetest.register_craft({
   type = "shapeless",
   output = "default:iron_lump",
   recipe = {"de_nenio:lump_small_iron", "de_nenio:lump_small_iron",
      "de_nenio:lump_small_iron", "de_nenio:lump_small_iron"},
})

minetest.register_craft({
   type = "shapeless",
   output = "default:gold_lump",
   recipe = {"de_nenio:lump_small_gold", "de_nenio:lump_small_gold",
      "de_nenio:lump_small_gold", "de_nenio:lump_small_gold"},
})
