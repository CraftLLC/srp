# Тестова функція для системи кастомних блоків
# Ця функція допомагає перевірити, що система працює правильно

# Дати гравцю предмети кастомних блоків для тестування
function custom_blocks:give_items

# Показати статус системи
minecraft:tellraw @s {"text":"=== Статус системи кастомних блоків ===","color":"gold"}

# Підрахувати поточні сутності кастомних блоків
minecraft:execute store result score #total_blocks custom_blocks run execute if entity @e[type=item_display,tag=custom_blocks.custom_block]
minecraft:execute store result score #super_blocks custom_blocks run execute if entity @e[type=item_display,tag=custom_blocks.super_block]

minecraft:tellraw @s [{"text":"Всього кастомних блоків: ","color":"green"},{"score":{"name":"#total_blocks","objective":"custom_blocks"},"color":"yellow"}]
minecraft:tellraw @s [{"text":"Супер блоків: ","color":"green"},{"score":{"name":"#super_blocks","objective":"custom_blocks"},"color":"yellow"}]

minecraft:tellraw @s {"text":"=== Інструкції ===","color":"gold"}
minecraft:tellraw @s {"text":"1. Розмістіть item frame на блоці","color":"white"}
minecraft:tellraw @s {"text":"2. Він перетвориться на кастомний блок","color":"white"}
minecraft:tellraw @s {"text":"3. Зламайте червоне скло для тестування очищення","color":"white"}
minecraft:tellraw @s {"text":"4. Використовуйте '/function custom_blocks:manual_cleanup' якщо потрібно","color":"white"}
minecraft:tellraw @s {"text":"5. Очищення відбувається тільки коли блоки дійсно зламані","color":"yellow"}