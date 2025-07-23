# Генератор нового типу блоку
# Використання: встановіть значення в scoreboard перед викликом

# Параметри (встановлюються через scoreboard):
# - new_block_id: ID нового блоку
# - new_model_data: custom_model_data
# - new_base_block: тип базового блоку (1-3)
# - new_behavior: поведінка блоку (0-1)

# Приклад використання:
# scoreboard players set new_block_id cb_temp 1503
# scoreboard players set new_model_data cb_temp 1503
# scoreboard players set new_base_block cb_temp 2
# scoreboard players set new_behavior cb_temp 1
# function custom_blocks:generators/create_block_type

# Реєстрація нового блоку в системі
execute store result score temp_id cb_config run scoreboard players get new_block_id cb_temp
execute store result score temp_model cb_config run scoreboard players get new_model_data cb_temp
execute store result score temp_base cb_base run scoreboard players get new_base_block cb_temp
execute store result score temp_behavior cb_behavior run scoreboard players get new_behavior cb_temp

# Повідомлення про успішну реєстрацію
tellraw @a[tag=admin] [{"text":"Новий блок зареєстровано з ID: ","color":"green"},{"score":{"name":"temp_id","objective":"cb_config"},"color":"yellow"}]