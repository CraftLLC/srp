# Перевіряти всі сутності кастомних блоків кожен тік
minecraft:execute as @e[type=item_display,tag=custom_blocks.custom_block] at @s run function custom_blocks:as_blocks

# Actionbar - показувати тільки якщо увімкнено в конфігурації
minecraft:execute store result score #total_blocks custom_blocks run execute if entity @e[type=item_display,tag=custom_blocks.custom_block]
minecraft:execute if score .rule.show_custom_blocks_actionbar datapack.temp.thecarengine.main matches 1 run title @a actionbar [{"text":"Кастомних блоків: ","color":"gold"},{"score":{"name":"#total_blocks","objective":"custom_blocks"},"color":"yellow"}]