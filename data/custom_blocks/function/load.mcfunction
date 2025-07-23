# Ініціалізувати scoreboards для системи кастомних блоків
minecraft:scoreboard objectives add custom_blocks dummy "Система кастомних блоків"

# Ініціалізувати actionbar як увімкнений за замовчуванням
minecraft:scoreboard players set #actionbar_enabled custom_blocks 1

# Показати повідомлення про завантаження
minecraft:tellraw @a {"text":"Датапак кастомних блоків успішно завантажено!","color":"green"}