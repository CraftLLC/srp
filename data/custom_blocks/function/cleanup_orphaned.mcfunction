# Clean up entities marked for removal
minecraft:kill @e[type=item_display,tag=custom_blocks.to_remove]

# Clean up orphaned item_display entities for super blocks
# This function removes item_display entities that don't have their corresponding red_stained_glass block
minecraft:execute as @e[type=item_display,tag=custom_blocks.super_block] at @s unless block ~ ~ ~ red_stained_glass run minecraft:kill @s

# Clean up any other orphaned custom block displays that don't have a valid block beneath them
minecraft:execute as @e[type=item_display,tag=custom_blocks.custom_block] at @s unless block ~ ~ ~ #minecraft:all run minecraft:kill @s

# Optional: Display cleanup message in actionbar for debugging (remove this line in production)
# minecraft:title @a actionbar {"text":"Custom blocks cleanup completed","color":"green"}