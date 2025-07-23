# Система тригерів для GUI кастомних блоків

# Створити тригер для відкриття меню
scoreboard objectives add cb_gui trigger "Custom Blocks GUI"

# Активувати тригер для всіх гравців
scoreboard players enable @a cb_gui

# Обробка тригерів
execute as @a[scores={cb_gui=1..}] run function custom_blocks:gui/main_menu
execute as @a[scores={cb_gui=1..}] run scoreboard players set @s cb_gui 0

# Альтернативний спосіб - через предмет
# Перевірити чи гравець тримає "GUI предмет"
execute as @a[nbt={SelectedItem:{id:"minecraft:compass",components:{"minecraft:custom_data":{cb_gui:1b}}}}] run function custom_blocks:gui/item_trigger

# Повідомлення про доступність GUI
execute as @a[tag=!cb_gui_notified] run function custom_blocks:gui/first_time_notification