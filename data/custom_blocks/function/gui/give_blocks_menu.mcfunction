# Меню отримання кастомних блоків

tellraw @s [""]
tellraw @s {"text":"🎁 ОТРИМАТИ КАСТОМНІ БЛОКИ","color":"green","bold":true}
tellraw @s {"text":"════════════════════════════","color":"green"}
tellraw @s [""]

# Супер блок
tellraw @s [{"text":"🟥 ","color":"red"},{"text":"[Супер блок x1]","color":"red","clickEvent":{"action":"run_command","value":"/give @s item_frame[custom_name='{\"text\":\"Супер блок\",\"italic\":false}',custom_model_data=1500,entity_data={id:\"minecraft:item_frame\",Invulnerable:1b,Fixed:1b,Silent:1b,Tags:[\"custom_blocks.item_frame_block\",\"custom_blocks.super_block\"],Facing:1b}] 1"},"hoverEvent":{"action":"show_text","contents":"Отримати 1 супер блок"}}," ",{"text":"[x16]","color":"red","clickEvent":{"action":"run_command","value":"/give @s item_frame[custom_name='{\"text\":\"Супер блок\",\"italic\":false}',custom_model_data=1500,entity_data={id:\"minecraft:item_frame\",Invulnerable:1b,Fixed:1b,Silent:1b,Tags:[\"custom_blocks.item_frame_block\",\"custom_blocks.super_block\"],Facing:1b}] 16"},"hoverEvent":{"action":"show_text","contents":"Отримати 16 супер блоків"}}," ",{"text":"[x64]","color":"red","clickEvent":{"action":"run_command","value":"/give @s item_frame[custom_name='{\"text\":\"Супер блок\",\"italic\":false}',custom_model_data=1500,entity_data={id:\"minecraft:item_frame\",Invulnerable:1b,Fixed:1b,Silent:1b,Tags:[\"custom_blocks.item_frame_block\",\"custom_blocks.super_block\"],Facing:1b}] 64"},"hoverEvent":{"action":"show_text","contents":"Отримати 64 супер блоки"}}]

# Магічний блок (приклад нового блоку)
tellraw @s [{"text":"🟦 ","color":"blue"},{"text":"[Магічний блок] ","color":"blue","strikethrough":true},{"text":"(Скоро)","color":"gray","italic":true}]

# Технічний блок (приклад нового блоку)
tellraw @s [{"text":"🟩 ","color":"green"},{"text":"[Технічний блок] ","color":"green","strikethrough":true},{"text":"(Скоро)","color":"gray","italic":true}]

tellraw @s [""]
tellraw @s [{"text":"🔄 ","color":"yellow"},{"text":"[Назад до головного меню]","color":"yellow","clickEvent":{"action":"run_command","value":"/function custom_blocks:gui/main_menu"},"hoverEvent":{"action":"show_text","contents":"Повернутися до головного меню"}}]