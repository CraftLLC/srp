loot spawn ~ ~ ~ loot custom_blocks:super_block
execute as @e[type=item,sort=nearest,limit=1,distance=..2,nbt={OnGround:0b,Age:0s,Item:{id:"minecraft:red_stained_glass"}}] run minecraft:kill @s
minecraft:kill @s