# Зберігаємо позицію для дропу лута
summon marker ~ ~ ~ {Tags:["temp_loot_marker"]}
# Дропаємо лут на позиції блоку
execute at @e[type=marker,tag=temp_loot_marker,limit=1] run loot spawn ~ ~ ~ loot custom_blocks:super_block
# Видаляємо червоне скло, що дропнулося
execute as @e[type=item,sort=nearest,limit=1,distance=..2,nbt={OnGround:0b,Age:0s,Item:{id:"minecraft:red_stained_glass"}}] run kill @s
# Прибираємо тимчасовий маркер
kill @e[type=marker,tag=temp_loot_marker,limit=1]
# Видаляємо item_display останнім
kill @s