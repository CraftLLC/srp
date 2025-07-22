# Spawn the loot for the custom block
loot spawn ~ ~ ~ loot custom_blocks:super_block

# Remove any red stained glass items that might have been dropped when the block was broken
minecraft:execute as @e[type=item,sort=nearest,distance=..3,nbt={Item:{id:"minecraft:red_stained_glass"}}] run minecraft:kill @s

# Remove all item_display entities with super_block tags at this location (including this one and any duplicates)
minecraft:execute positioned ~ ~ ~ run minecraft:kill @e[type=item_display,tag=custom_blocks.super_block,distance=..1]