tellraw @a ["",{"text":"[","color":"yellow"},{"text":"Mob Variety","color":"gold"},{"text":"] ","color":"yellow"},{"text":"Reload successful!","color":"green"}]

scoreboard objectives add mob_variety.config dummy
scoreboard objectives add mob_variety.temp dummy

execute unless score %max_size mob_variety.config matches -2147483648..2147483647 run scoreboard players set %max_size mob_variety.config 115
execute unless score %min_size mob_variety.config matches -2147483648..2147483647 run scoreboard players set %min_size mob_variety.config 85

execute store result storage mob_variety:storage max_size int 1 run scoreboard players get %max_size mob_variety.config
execute store result storage mob_variety:storage min_size int 1 run scoreboard players get %min_size mob_variety.config

tellraw @a ["",{"text":"Max Entity Size: ","color":"green"},{"nbt":"max_size","storage":"mob_variety:storage","color":"yellow"},"\n",{"text":"Min Entity Size: ","color":"green"},{"nbt":"min_size","storage":"mob_variety:storage","color":"yellow"}]
