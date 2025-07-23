# Меню очищення кастомних блоків

tellraw @s [""]
tellraw @s {"text":"🧹 ОЧИЩЕННЯ БЛОКІВ","color":"red","bold":true}
tellraw @s {"text":"═══════════════════","color":"red"}
tellraw @s [""]

# Перевірка на сирітські блоки
execute store result score #orphaned_count custom_blocks run execute if entity @e[type=item_display,tag=custom_blocks.super_block] unless block ~ ~ ~ red_stained_glass

tellraw @s [{"text":"🔍 Діагностика:","color":"yellow"}]
tellraw @s [{"text":"   • Потенційно сирітських блоків: ","color":"white"},{"score":{"name":"#orphaned_count","objective":"custom_blocks"},"color":"red"}]
tellraw @s [""]

# Опції очищення
tellraw @s [{"text":"🧽 ","color":"green"},{"text":"[Безпечне очищення]","color":"green","clickEvent":{"action":"run_command","value":"/function custom_blocks:manual_cleanup"},"hoverEvent":{"action":"show_text","contents":"Видалити тільки сирітські блоки (без базового блоку)"}}]

tellraw @s [{"text":"🔧 ","color":"blue"},{"text":"[Автоматичне очищення]","color":"blue","clickEvent":{"action":"run_command","value":"/function custom_blocks:cleanup_orphaned"},"hoverEvent":{"action":"show_text","contents":"Запустити стандартне очищення системи"}}]

tellraw @s [{"text":"📊 ","color":"purple"},{"text":"[Детальна діагностика]","color":"purple","clickEvent":{"action":"run_command","value":"/function custom_blocks:gui/diagnostic_menu"},"hoverEvent":{"action":"show_text","contents":"Показати детальну інформацію про стан блоків"}}]

tellraw @s [{"text":"⚠️ ","color":"gold"},{"text":"[Перевірити цілісність]","color":"gold","clickEvent":{"action":"run_command","value":"/function custom_blocks:gui/integrity_check"},"hoverEvent":{"action":"show_text","contents":"Перевірити цілісність всіх кастомних блоків"}}]

tellraw @s [""]
tellraw @s {"text":"💡 Порада: Використовуйте 'Безпечне очищення' для регулярного обслуговування","color":"gray","italic":true}
tellraw @s [""]

tellraw @s [{"text":"🔄 ","color":"yellow"},{"text":"[Назад до головного меню]","color":"yellow","clickEvent":{"action":"run_command","value":"/function custom_blocks:gui/main_menu"},"hoverEvent":{"action":"show_text","contents":"Повернутися до головного меню"}}]