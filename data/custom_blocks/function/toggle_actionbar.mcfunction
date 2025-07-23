# Перемикач actionbar з показом кількості кастомних блоків
# Перевірити поточний стан (ініціалізувати якщо не встановлено)
minecraft:execute unless score #actionbar_enabled custom_blocks matches 0..1 run scoreboard players set #actionbar_enabled custom_blocks 1

# Зберегти поточний стан для перемикання
minecraft:scoreboard players set #temp_toggle custom_blocks 0
minecraft:execute if score #actionbar_enabled custom_blocks matches 1 run scoreboard players set #temp_toggle custom_blocks 1

# Перемикнути стан
minecraft:execute if score #temp_toggle custom_blocks matches 1 run scoreboard players set #actionbar_enabled custom_blocks 0
minecraft:execute if score #temp_toggle custom_blocks matches 0 run scoreboard players set #actionbar_enabled custom_blocks 1

# Повідомити гравцю про зміну стану
minecraft:execute if score #actionbar_enabled custom_blocks matches 1 run tellraw @s [{"text":"Actionbar кастомних блоків: ","color":"green"},{"text":"УВІМКНЕНО","color":"lime","bold":true}]
minecraft:execute if score #actionbar_enabled custom_blocks matches 0 run tellraw @s [{"text":"Actionbar кастомних блоків: ","color":"green"},{"text":"ВИМКНЕНО","color":"red","bold":true}]

# Очистити actionbar якщо вимкнено
minecraft:execute if score #actionbar_enabled custom_blocks matches 0 run title @s actionbar ""