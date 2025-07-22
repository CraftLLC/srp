# Place the base block (red stained glass)
minecraft:setblock ~ ~ ~ red_stained_glass keep

# Summon the item_display entity that represents the custom block
minecraft:summon item_display ~ ~ ~ {Tags:["custom_blocks.super_block","custom_blocks.custom_block"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.47f,0f],scale:[1.01f,1.01f,1.01f]},item:{id:"minecraft:item_frame",Count:1b,components:{custom_model_data:1}}}
