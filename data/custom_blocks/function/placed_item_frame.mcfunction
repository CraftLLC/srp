# Відкликати досягнення для повторного використання
advancement revoke @s only custom_blocks:placed_item_frame

# Перевірити всі розміщені item frame з тегами кастомних блоків
minecraft:execute as @e[tag=custom_blocks.item_frame_block] at @s run function custom_blocks:check_placed_item_frame
