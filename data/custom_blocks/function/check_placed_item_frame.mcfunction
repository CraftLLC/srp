# Перевірити чи це супер блок і розмістити його
minecraft:execute as @s[tag=custom_blocks.super_block] run function custom_blocks:super_block/place

# Видалити сутність item frame після розміщення кастомного блоку
minecraft:kill @s