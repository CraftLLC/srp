# Перевірити чи вже є кастомний блок на цій позиції
execute if entity @e[type=item_display,tag=custom_blocks.custom_block,distance=..0.5] run give @p[distance=..10] item_frame[custom_name='{"text":"Супер блок","italic":false}',custom_model_data=1500,entity_data={id:"minecraft:item_frame",Invulnerable:true,Fixed:true,Silent:true,Tags:["custom_blocks.item_frame_block","custom_blocks.super_block"],Facing:true}]
execute if entity @e[type=item_display,tag=custom_blocks.custom_block,distance=..0.5] run return fail

# Розмістити базовий блок (червоне скло)
minecraft:setblock ~ ~ ~ red_stained_glass keep

# Створити сутність item_display, яка представляє кастомний блок
minecraft:summon item_display ~ ~ ~ {Tags:["custom_blocks.super_block","custom_blocks.custom_block"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.47f,0f],scale:[1.01f,1.01f,1.01f]},item:{id:"minecraft:item_frame",Count:1b,components:{custom_model_data:1}}}
