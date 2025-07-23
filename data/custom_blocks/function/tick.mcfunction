# Перевіряти всі сутності кастомних блоків кожен тік
minecraft:execute as @e[type=item_display,tag=custom_blocks.custom_block] at @s run function custom_blocks:as_blocks

# Actionbar
# Підрахувати поточні сутності кастомних блоків
minecraft:execute store result score #total_blocks custom_blocks run execute if entity @e[type=item_display,tag=custom_blocks.custom_block]
minecraft:title @a actionbar [{"text":"Кастомних блоків: ","color":"gold"},{"score":{"name":"#total_blocks","objective":"custom_blocks"},"color":"yellow"}]