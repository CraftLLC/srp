# Перемикання показу actionbar для кастомних блоків
minecraft:execute if score .rule.show_custom_blocks_actionbar datapack.temp.thecarengine.main matches 1 run function thescarengine:commands/config/chattrigger/show_custom_blocks_actionbar/0
minecraft:execute if score .rule.show_custom_blocks_actionbar datapack.temp.thecarengine.main matches 0 run function thescarengine:commands/config/chattrigger/show_custom_blocks_actionbar/1

# Показати поточний стан
minecraft:execute if score .rule.show_custom_blocks_actionbar datapack.temp.thecarengine.main matches 1 run tellraw @s [{"text":"Actionbar кастомних блоків: ","color":"green"},{"text":"УВІМКНЕНО","color":"yellow"}]
minecraft:execute if score .rule.show_custom_blocks_actionbar datapack.temp.thecarengine.main matches 0 run tellraw @s [{"text":"Actionbar кастомних блоків: ","color":"green"},{"text":"ВИМКНЕНО","color":"red"}]