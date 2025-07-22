# Initialize scoreboards for custom blocks system
minecraft:scoreboard objectives add custom_blocks dummy "Custom Blocks System"

# Display load message
minecraft:tellraw @a {"text":"Custom Blocks datapack loaded successfully!","color":"green"}