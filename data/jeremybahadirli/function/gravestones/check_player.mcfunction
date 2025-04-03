scoreboard players operation @a deathID -= @s deathID
execute if entity @a[scores={deathID=0},gamemode=spectator] run function jeremybahadirli:gravestones/revive
scoreboard players operation @a deathID += @s deathID