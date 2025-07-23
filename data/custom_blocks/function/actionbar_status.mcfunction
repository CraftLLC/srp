# Показати стан actionbar
minecraft:execute if score #actionbar_enabled custom_blocks matches 1 run tellraw @s [{"text":"Actionbar: ","color":"aqua"},{"text":"УВІМКНЕНО","color":"lime"}]
minecraft:execute if score #actionbar_enabled custom_blocks matches 0 run tellraw @s [{"text":"Actionbar: ","color":"aqua"},{"text":"ВИМКНЕНО","color":"red"}]
minecraft:tellraw @s [{"text":"Для перемикання actionbar використовуйте: ","color":"gray"},{"text":"/function custom_blocks:actionbar","color":"yellow","clickEvent":{"action":"suggest_command","value":"/function custom_blocks:actionbar"}}]