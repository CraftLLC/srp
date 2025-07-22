# Clean up entities marked for removal (these are already confirmed to be broken)
minecraft:kill @e[type=item_display,tag=custom_blocks.to_remove]

# ONLY clean up orphaned item_display entities for super blocks that don't have their base block
# This is safe because if the red_stained_glass is missing, the block was definitely broken
minecraft:execute as @e[type=item_display,tag=custom_blocks.super_block] at @s unless block ~ ~ ~ red_stained_glass run minecraft:kill @s

# Display cleanup message
minecraft:tellraw @a[tag=debug] {"text":"Custom blocks cleanup completed - removed orphaned entities only","color":"green"}