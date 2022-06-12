execute as @a at @s if predicate fireflies:inmangroveswamp run function fireflies:spawnfireflies
execute as @a[scores={candles_mined=1..}] run function fireflies:check_bottles
execute as @a[scores={glow_item_used=1..}] run function fireflies:place_bottle
execute as @a[tag=collecting_fly] at @s run function fireflies:collect_bottle