execute as @e[tag=firefly_bottle] at @s unless block ~ ~ ~ minecraft:candle run setblock ~ ~ ~ minecraft:candle
scoreboard players reset @a glow_item_used