# Test function for custom blocks system
# This function helps verify that the system is working correctly

# Give the player some custom block items for testing
function custom_blocks:give_items

# Display system status
minecraft:tellraw @s {"text":"=== Custom Blocks System Status ===","color":"gold"}

# Count current custom block entities
minecraft:execute store result score #total_blocks custom_blocks run execute if entity @e[type=item_display,tag=custom_blocks.custom_block]
minecraft:execute store result score #super_blocks custom_blocks run execute if entity @e[type=item_display,tag=custom_blocks.super_block]

minecraft:tellraw @s [{"text":"Total custom blocks: ","color":"green"},{"score":{"name":"#total_blocks","objective":"custom_blocks"},"color":"yellow"}]
minecraft:tellraw @s [{"text":"Super blocks: ","color":"green"},{"score":{"name":"#super_blocks","objective":"custom_blocks"},"color":"yellow"}]

# Show cleanup timer status
minecraft:tellraw @s [{"text":"Cleanup timer: ","color":"green"},{"score":{"name":"#cleanup_timer","objective":"custom_blocks"},"color":"yellow"},{"text":"/100","color":"green"}]

minecraft:tellraw @s {"text":"=== Instructions ===","color":"gold"}
minecraft:tellraw @s {"text":"1. Place the item frame on a block","color":"white"}
minecraft:tellraw @s {"text":"2. It will convert to a custom block","color":"white"}
minecraft:tellraw @s {"text":"3. Break the red glass to test cleanup","color":"white"}
minecraft:tellraw @s {"text":"4. Use '/function custom_blocks:manual_cleanup' if needed","color":"white"}