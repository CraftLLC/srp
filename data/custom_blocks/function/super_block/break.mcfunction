# Видаляємо item_display першим
kill @s
# Дропаємо лут
loot spawn ~ ~ ~ loot custom_blocks:super_block
# Видаляємо червоне скло, яке дропнулося
execute as @e[type=item,sort=nearest,limit=1,distance=..2,nbt={OnGround:0b,Age:0s,Item:{id:"minecraft:red_stained_glass"}}] run kill @s