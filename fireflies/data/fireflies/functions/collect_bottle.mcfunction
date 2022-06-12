execute if entity @s[tag=!collecting_fly] run scoreboard players reset @s talked_vlgr
execute if entity @s[nbt={SelectedItem:{id:"minecraft:glass_bottle"}}, tag=!collecting_fly] run summon villager ^ ^ ^-2 {Silent:1b,Invulnerable:1b,Tags:["fly_collect"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:20000000,ShowParticles:0b}]}
execute if entity @s[nbt={SelectedItem:{id:"minecraft:glass_bottle"}}] run tag @s add collecting_fly
execute if entity @s[tag=collecting_fly,scores={talked_vlgr=1..}] run clear @s minecraft:glass_bottle 1
execute positioned ^ ^ ^2 if entity @s[tag=collecting_fly] run tp @e[tag=fly_collect, limit=1, sort=nearest] ~ ~ ~
execute if entity @s[tag=collecting_fly,scores={talked_vlgr=1..}] run function fireflies:give_bottle
execute if entity @s[tag=collecting_fly,scores={talked_vlgr=1..}] run scoreboard players reset @s talked_vlgr
execute if entity @s[nbt=!{SelectedItem:{id:"minecraft:glass_bottle"}}] run tag @s remove collecting_fly
execute positioned ^ ^ ^2 if entity @s[nbt=!{SelectedItem:{id:"minecraft:glass_bottle"}}] run tp @e[tag=fly_collect, limit=1, sort=nearest] ~ ~-2 ~
execute positioned ^ ^ ^2 positioned ~ ~-2 ~ if entity @s[nbt=!{SelectedItem:{id:"minecraft:glass_bottle"}}] run kill @e[tag=fly_collect, limit=1, sort=nearest]