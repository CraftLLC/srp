# Перевірити чи базовий блок (червоне скло) все ще там
# Якщо ні, то блок був зламаний і потрібно очистити
minecraft:execute unless block ~ ~ ~ red_stained_glass run tag @s add custom_blocks.to_remove
minecraft:execute unless block ~ ~ ~ red_stained_glass run function custom_blocks:super_block/break
