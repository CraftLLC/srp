# Підрахувати поточні сутності кастомних блоків
minecraft:execute store result score #total_blocks custom_blocks run execute if entity @e[type=item_display,tag=custom_blocks.custom_block]
minecraft:execute store result score #super_blocks custom_blocks run execute if entity @e[type=item_display,tag=custom_blocks.super_block]

minecraft:tellraw @s [{"text":"Всього кастомних блоків: ","color":"green"},{"score":{"name":"#total_blocks","objective":"custom_blocks"},"color":"yellow"}]
minecraft:tellraw @s [{"text":"Супер блоків: ","color":"green"},{"score":{"name":"#super_blocks","objective":"custom_blocks"},"color":"yellow"}]

# Показати стан actionbar
minecraft:execute if score #actionbar_enabled custom_blocks matches 1 run tellraw @s [{"text":"Actionbar: ","color":"aqua"},{"text":"УВІМКНЕНО","color":"lime"}]
minecraft:execute if score #actionbar_enabled custom_blocks matches 0 run tellraw @s [{"text":"Actionbar: ","color":"aqua"},{"text":"ВИМКНЕНО","color":"red"}]
minecraft:tellraw @s [{"text":"Для перемикання actionbar використовуйте: ","color":"gray"},{"text":"/function custom_blocks:actionbar","color":"yellow","clickEvent":{"action":"suggest_command","value":"/function custom_blocks:actionbar"}}]