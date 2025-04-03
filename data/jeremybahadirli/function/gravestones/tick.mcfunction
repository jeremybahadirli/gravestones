execute as @a[tag=!recieved_potions,gamemode=survival] run function jeremybahadirli:gravestones/initial_spawn

execute as @a at @s align xyz if score @s deaths matches 1.. run function jeremybahadirli:gravestones/spawn

execute at @e[tag=gravestone_stand,tag=!activated] run particle minecraft:ash ~ ~1 ~1 0.5 0.5 1 0 1
execute at @e[tag=gravestone_stand,tag=activated] run particle minecraft:smoke ~ ~1 ~1 0.5 0.5 1 0 2

execute as @e[tag=gravestone_stand,tag=!activated] at @s if entity @e[type=minecraft:splash_potion,nbt={Item:{components:{"minecraft:custom_data":{undying_potion:1b}}}},distance=..4] run function jeremybahadirli:gravestones/activate_grave
execute as @e[tag=gravestone_stand,tag=activated] at @s run function jeremybahadirli:gravestones/check_player