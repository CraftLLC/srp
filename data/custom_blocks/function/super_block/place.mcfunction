# Встановлюємо базовий блок
setblock ~ ~ ~ red_stained_glass keep
# Створюємо item_display з покращеними налаштуваннями для Purpur
summon item_display ~ ~ ~ {Tags:["custom_blocks.super_block","custom_blocks.custom_block"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.47f,0f],scale:[1.01f,1.01f,1.01f]},item:{id:"minecraft:item_frame",Count:1b,components:{custom_model_data:1}},Invulnerable:1b}
