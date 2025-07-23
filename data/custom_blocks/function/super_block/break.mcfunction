# Створити дроп для кастомного блоку тільки якщо гравець не в креативі
execute unless entity @a[gamemode=creative,distance=..10] run loot spawn ~ ~ ~ loot custom_blocks:super_block

# Видалити предмети червоного скла, які могли випасти при ламанні блоку
minecraft:execute as @e[type=item,sort=nearest,distance=..3,nbt={Item:{id:"minecraft:red_stained_glass"}}] run minecraft:kill @s

# Видалити item_display
minecraft:execute positioned ~ ~ ~ run minecraft:kill @e[type=item_display,tag=custom_blocks.super_block,distance=..1,sort=nearest,limit=1]