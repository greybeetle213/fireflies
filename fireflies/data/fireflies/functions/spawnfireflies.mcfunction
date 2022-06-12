execute store result score #time time run time query daytime
execute if score #time time matches 13000.. run particle electric_spark ~ ~ ~ 15 5 15 0.5 100 force @s
execute if entity @s[nbt={SelectedItem:{id:"minecraft:glass_bottle"}}, tag=!collecting_fly] if score #time time matches 13000.. run function fireflies:collect_bottle