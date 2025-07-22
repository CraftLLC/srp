# Manual cleanup function for custom blocks
# This can be called by players or admins to force cleanup of orphaned entities

# Count entities before cleanup
minecraft:execute store result score #before_count custom_blocks run execute if entity @e[type=item_display,tag=custom_blocks.custom_block]

# Run the cleanup
function custom_blocks:cleanup_orphaned

# Count entities after cleanup
minecraft:execute store result score #after_count custom_blocks run execute if entity @e[type=item_display,tag=custom_blocks.custom_block]

# Calculate difference
minecraft:scoreboard players operation #cleaned_count custom_blocks = #before_count custom_blocks
minecraft:scoreboard players operation #cleaned_count custom_blocks -= #after_count custom_blocks

# Display results
minecraft:tellraw @s [{"text":"Custom blocks cleanup completed. Removed ","color":"green"},{"score":{"name":"#cleaned_count","objective":"custom_blocks"},"color":"yellow"},{"text":" orphaned entities.","color":"green"}]