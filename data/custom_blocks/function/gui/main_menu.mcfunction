# Головне GUI меню для управління кастомними блоками
# Викликається командою або через триггер

# Очистити чат для кращого відображення
tellraw @s [""]
tellraw @s [""]
tellraw @s [""]

# Заголовок меню
tellraw @s {"text":"╔══════════════════════════════════════════╗","color":"gold"}
tellraw @s {"text":"║         🏗️  КАСТОМНІ БЛОКИ  🏗️         ║","color":"gold"}
tellraw @s {"text":"╚══════════════════════════════════════════╝","color":"gold"}
tellraw @s [""]

# Статистика
execute store result score #total_blocks custom_blocks run execute if entity @e[type=item_display,tag=custom_blocks.custom_block]
execute store result score #super_blocks custom_blocks run execute if entity @e[type=item_display,tag=custom_blocks.super_block]

tellraw @s [{"text":"📊 Статистика: ","color":"aqua"},{"text":"Всього блоків: ","color":"white"},{"score":{"name":"#total_blocks","objective":"custom_blocks"},"color":"yellow"}]
tellraw @s [""]

# Основні дії
tellraw @s [{"text":"🎁 ","color":"green"},{"text":"[Отримати блоки]","color":"green","clickEvent":{"action":"run_command","value":"/function custom_blocks:gui/give_blocks_menu"},"hoverEvent":{"action":"show_text","contents":"Отримати кастомні блоки для будівництва"}}]

tellraw @s [{"text":"🔧 ","color":"blue"},{"text":"[Управління блоками]","color":"blue","clickEvent":{"action":"run_command","value":"/function custom_blocks:gui/manage_blocks_menu"},"hoverEvent":{"action":"show_text","contents":"Управляти існуючими блоками"}}]

tellraw @s [{"text":"📋 ","color":"yellow"},{"text":"[Інформація про блоки]","color":"yellow","clickEvent":{"action":"run_command","value":"/function custom_blocks:gui/info_menu"},"hoverEvent":{"action":"show_text","contents":"Переглянути інформацію про типи блоків"}}]

tellraw @s [{"text":"🧹 ","color":"red"},{"text":"[Очищення]","color":"red","clickEvent":{"action":"run_command","value":"/function custom_blocks:gui/cleanup_menu"},"hoverEvent":{"action":"show_text","contents":"Очистити зламані або сирітські блоки"}}]

tellraw @s [{"text":"⚙️ ","color":"gray"},{"text":"[Налаштування]","color":"gray","clickEvent":{"action":"run_command","value":"/function custom_blocks:gui/settings_menu"},"hoverEvent":{"action":"show_text","contents":"Налаштування системи блоків"}}]

tellraw @s [""]
tellraw @s [{"text":"❌ ","color":"dark_red"},{"text":"[Закрити меню]","color":"dark_red","clickEvent":{"action":"run_command","value":"/tellraw @s {\"text\":\"Меню закрито\",\"color\":\"gray\"}"},"hoverEvent":{"action":"show_text","contents":"Закрити це меню"}}]