# Перевіряти всі сутності кастомних блоків кожен тік
minecraft:execute as @e[type=item_display,tag=custom_blocks.custom_block] at @s run function custom_blocks:as_blocks
