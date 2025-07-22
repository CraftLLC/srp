# Очистити сутності позначені для видалення (вони вже підтверджено зламані)
minecraft:kill @e[type=item_display,tag=custom_blocks.to_remove]

# ТІЛЬКИ очищувати сирітські item_display сутності супер блоків, які не мають базового блоку
# Це безпечно, бо якщо червоного скла немає, то блок точно був зламаний
minecraft:execute as @e[type=item_display,tag=custom_blocks.super_block] at @s unless block ~ ~ ~ red_stained_glass run minecraft:kill @s

# Показати повідомлення про очищення
minecraft:tellraw @a[tag=debug] {"text":"Очищення кастомних блоків завершено - видалено тільки сирітські сутності","color":"green"}