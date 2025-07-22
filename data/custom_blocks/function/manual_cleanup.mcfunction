# Функція ручного очищення для кастомних блоків
# Може викликатися гравцями або адміністраторами для примусового очищення сирітських сутностей

# Підрахувати сутності до очищення
minecraft:execute store result score #before_count custom_blocks run execute if entity @e[type=item_display,tag=custom_blocks.custom_block]

# Запустити очищення
function custom_blocks:cleanup_orphaned

# Підрахувати сутності після очищення
minecraft:execute store result score #after_count custom_blocks run execute if entity @e[type=item_display,tag=custom_blocks.custom_block]

# Обчислити різницю
minecraft:scoreboard players operation #cleaned_count custom_blocks = #before_count custom_blocks
minecraft:scoreboard players operation #cleaned_count custom_blocks -= #after_count custom_blocks

# Показати результати
minecraft:tellraw @s [{"text":"Очищення кастомних блоків завершено. Видалено ","color":"green"},{"score":{"name":"#cleaned_count","objective":"custom_blocks"},"color":"yellow"},{"text":" сирітських сутностей.","color":"green"}]