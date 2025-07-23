# Підрахувати поточні сутності кастомних блоків
minecraft:execute store result score #total_blocks custom_blocks run execute if entity @e[type=item_display,tag=custom_blocks.custom_block]
minecraft:execute store result score #super_blocks custom_blocks run execute if entity @e[type=item_display,tag=custom_blocks.super_block]

minecraft:tellraw @s [{"text":"Всього кастомних блоків: ","color":"green"},{"score":{"name":"#total_blocks","objective":"custom_blocks"},"color":"yellow"}]
minecraft:tellraw @s [{"text":"Супер блоків: ","color":"green"},{"score":{"name":"#super_blocks","objective":"custom_blocks"},"color":"yellow"}]