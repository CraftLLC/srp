# Template для створення нових кастомних блоків
# Копіюйте цей файл та змініть параметри для нового блоку

# Параметри блоку (змініть ці значення):
# - block_id: унікальний ідентифікатор блоку
# - base_block: базовий minecraft блок
# - model_data: custom_model_data для текстури
# - display_name: назва блоку
# - loot_table: таблиця дропу

# Приклад для нового блоку "magic_block":
# minecraft:setblock ~ ~ ~ blue_stained_glass keep
# minecraft:summon item_display ~ ~ ~ {Tags:["custom_blocks.magic_block","custom_blocks.custom_block"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.47f,0f],scale:[1.01f,1.01f,1.01f]},item:{id:"minecraft:item_frame",Count:1b,components:{custom_model_data:2}}}

# Структура функцій для нового блоку:
# - place.mcfunction: логіка розміщення
# - break.mcfunction: логіка ламання
# - tick.mcfunction: логіка кожного тіку (якщо потрібно)
# - interact.mcfunction: логіка взаємодії (якщо потрібно)