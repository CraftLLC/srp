# Revoke the advancement to allow repeated use
advancement revoke @s only custom_blocks:placed_item_frame

# Check all placed item frames with custom block tags
minecraft:execute as @e[tag=custom_blocks.item_frame_block] at @s run function custom_blocks:check_placed_item_frame
