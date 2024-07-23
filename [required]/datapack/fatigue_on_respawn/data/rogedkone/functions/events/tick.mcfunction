# Установка триггера при смерти игрока
execute as @a[scores={deaths=1..}] run scoreboard players set @s respawn_trigger 1

# Обнаружение возрождения игрока (время с момента смерти больше 0 и триггер установлен)
execute as @a[scores={respawn_trigger=1..,time_since_death=1..}] run function rogedkone:events/on_respawn

# Сброс счетчиков после выполнения функции
scoreboard players reset @a[scores={respawn_trigger=1..,time_since_death=1..}] respawn_trigger
scoreboard players reset @a[scores={deaths=1..}] deaths