# Check if this is a super block and place it
minecraft:execute as @s[tag=custom_blocks.super_block] run function custom_blocks:super_block/place

# Remove the item frame entity after placing the custom block
minecraft:kill @s