# Check all custom block entities every tick
minecraft:execute as @e[type=item_display,tag=custom_blocks.custom_block] at @s run function custom_blocks:as_blocks

# Run cleanup every 100 ticks (5 seconds) to remove orphaned displays
minecraft:execute if score #cleanup_timer custom_blocks matches 100.. run function custom_blocks:cleanup_orphaned
minecraft:execute if score #cleanup_timer custom_blocks matches 100.. run scoreboard players set #cleanup_timer custom_blocks 0
minecraft:scoreboard players add #cleanup_timer custom_blocks 1
