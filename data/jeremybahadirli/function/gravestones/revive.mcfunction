tp @a[scores={deathID=0},gamemode=spectator] ~ ~1 ~1
gamemode survival @a[scores={deathID=0},gamemode=spectator]

playsound minecraft:item.totem.use ambient @a ~ ~1 ~1
particle minecraft:totem_of_undying ~ ~1 ~1 0 0 0 1 300 normal

setblock ~ ~1 ~ minecraft:mossy_stone_bricks
setblock ~ ~ ~ minecraft:mossy_stone_bricks
setblock ~ ~ ~1 minecraft:cracked_stone_bricks
setblock ~ ~ ~2 minecraft:mossy_stone_bricks

kill @s