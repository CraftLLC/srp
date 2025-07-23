# Реєстр всіх кастомних блоків
# Цей файл містить конфігурацію всіх доступних блоків

# Ініціалізація реєстру
scoreboard objectives add cb_config dummy "Custom Blocks Config"

# Реєстрація блоків (ID = custom_model_data)
scoreboard players set super_block cb_config 1500
scoreboard players set magic_block cb_config 1501
scoreboard players set tech_block cb_config 1502

# Налаштування поведінки блоків
# 0 = статичний блок, 1 = активний блок (потребує tick)
scoreboard objectives add cb_behavior dummy "Block Behavior"
scoreboard players set super_block cb_behavior 1
scoreboard players set magic_block cb_behavior 1
scoreboard players set tech_block cb_behavior 0

# Налаштування базових блоків
scoreboard objectives add cb_base dummy "Base Blocks"
# Використовуємо числові ID для базових блоків
# 1 = red_stained_glass, 2 = blue_stained_glass, 3 = green_stained_glass
scoreboard players set super_block cb_base 1
scoreboard players set magic_block cb_base 2
scoreboard players set tech_block cb_base 3