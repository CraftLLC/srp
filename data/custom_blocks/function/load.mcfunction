# Initialize scoreboards for custom blocks system
minecraft:scoreboard objectives add custom_blocks dummy "Custom Blocks System"

# Initialize cleanup timer
minecraft:scoreboard players set #cleanup_timer custom_blocks 0

# Display load message
minecraft:tellraw @a {"text":"Custom Blocks datapack loaded successfully!","color":"green"}