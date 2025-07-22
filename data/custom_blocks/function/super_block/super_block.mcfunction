# Check if the base block (red stained glass) is still there
# If not, the block was broken and we need to clean up
minecraft:execute unless block ~ ~ ~ red_stained_glass run tag @s add custom_blocks.to_remove
minecraft:execute unless block ~ ~ ~ red_stained_glass run function custom_blocks:super_block/break
