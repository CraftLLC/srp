# Телепортація гравця до випадкового кастомного блоку в світі
minecraft:tp @s @e[type=item_display,tag=custom_blocks.custom_block,sort=random,limit=1]

# Вивід повідомлення про телепортацію
minecraft:tellraw @s {"text":"Телепортовано до випадкового кастомного блоку!","color":"green"}