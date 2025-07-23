# Меню управління кастомними блоками

tellraw @s [""]
tellraw @s {"text":"🔧 УПРАВЛІННЯ БЛОКАМИ","color":"blue","bold":true}
tellraw @s {"text":"══════════════════════","color":"blue"}
tellraw @s [""]

# Статистика блоків
execute store result score #total_blocks custom_blocks run execute if entity @e[type=item_display,tag=custom_blocks.custom_block]
execute store result score #super_blocks custom_blocks run execute if entity @e[type=item_display,tag=custom_blocks.super_block]

tellraw @s [{"text":"📊 Поточна статистика:","color":"aqua"}]
tellraw @s [{"text":"   • Всього блоків: ","color":"white"},{"score":{"name":"#total_blocks","objective":"custom_blocks"},"color":"yellow"}]
tellraw @s [{"text":"   • Супер блоків: ","color":"white"},{"score":{"name":"#super_blocks","objective":"custom_blocks"},"color":"yellow"}]
tellraw @s [""]

# Дії управління
tellraw @s [{"text":"🔍 ","color":"green"},{"text":"[Знайти найближчий блок]","color":"green","clickEvent":{"action":"run_command","value":"/execute at @s run tp @s @e[type=item_display,tag=custom_blocks.custom_block,sort=nearest,limit=1]"},"hoverEvent":{"action":"show_text","contents":"Телепортуватися до найближчого кастомного блоку"}}]

tellraw @s [{"text":"🎲 ","color":"purple"},{"text":"[Телепорт до випадкового блоку]","color":"purple","clickEvent":{"action":"run_command","value":"/function custom_blocks:rtp_custom_block"},"hoverEvent":{"action":"show_text","contents":"Телепортуватися до випадкового кастомного блоку"}}]

tellraw @s [{"text":"📍 ","color":"gold"},{"text":"[Підрахувати блоки]","color":"gold","clickEvent":{"action":"run_command","value":"/function custom_blocks:count_custom_blocks"},"hoverEvent":{"action":"show_text","contents":"Показати детальну статистику блоків"}}]

tellraw @s [{"text":"🗑️ ","color":"red"},{"text":"[Видалити блоки в радіусі 10]","color":"red","clickEvent":{"action":"run_command","value":"/execute at @s run kill @e[type=item_display,tag=custom_blocks.custom_block,distance=..10]"},"hoverEvent":{"action":"show_text","contents":"⚠️ УВАГА: Видалить всі кастомні блоки в радіусі 10 блоків"}}]

tellraw @s [{"text":"💥 ","color":"dark_red"},{"text":"[ВИДАЛИТИ ВСІ БЛОКИ]","color":"dark_red","bold":true,"clickEvent":{"action":"run_command","value":"/function custom_blocks:gui/confirm_delete_all"},"hoverEvent":{"action":"show_text","contents":"⚠️ НЕБЕЗПЕЧНО: Видалить ВСІ кастомні блоки в світі"}}]

tellraw @s [""]
tellraw @s [{"text":"🔄 ","color":"yellow"},{"text":"[Назад до головного меню]","color":"yellow","clickEvent":{"action":"run_command","value":"/function custom_blocks:gui/main_menu"},"hoverEvent":{"action":"show_text","contents":"Повернутися до головного меню"}}]