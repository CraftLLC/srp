# Ініціалізувати scoreboards для системи кастомних блоків
minecraft:scoreboard objectives add custom_blocks dummy "Система кастомних блоків"

# Ініціалізувати конфігурацію блоків
function custom_blocks:config/block_registry

# Ініціалізувати GUI систему
function custom_blocks:gui/triggers

# Показати повідомлення про завантаження
minecraft:tellraw @a {"text":"Датапак кастомних блоків успішно завантажено!","color":"green"}
minecraft:tellraw @a [{"text":"Використовуйте ","color":"gray"},{"text":"/trigger cb_gui","color":"gold","clickEvent":{"action":"suggest_command","value":"/trigger cb_gui"},"hoverEvent":{"action":"show_text","contents":"Клікніть щоб відкрити GUI"}},{"text":" для відкриття меню","color":"gray"}]