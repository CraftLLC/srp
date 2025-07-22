# Перевіряємо чи блок все ще існує (для Purpur)
execute unless block ~ ~ ~ red_stained_glass run function custom_blocks:super_block/break
# Додаткова перевірка для випадків, коли блок замінено
execute if block ~ ~ ~ air run function custom_blocks:super_block/break
