summon minecraft:armor_stand ~.5 ~-.2 ~-.5 {Tags:["gravestone_stand","new_stand"],Invisible:1b,Small:1b,NoGravity:1b,CustomNameVisible:1b,DisabledSlots:4144959}

scoreboard players operation $global deaths += @s deaths
scoreboard players operation @s deathID = $global deaths
scoreboard players operation @e[tag=new_stand,limit=1] deathID = $global deaths
scoreboard players reset @s deaths

setblock ~ ~ ~-1 minecraft:oak_sign
tag @s add target
data modify block ~ ~ ~-1 front_text.messages[0] set value {"selector":"@a[tag=target]"}
tag @s remove target
data modify entity @e[tag=new_stand,limit=1] CustomName set from block ~ ~ ~-1 front_text.messages[0]

tag @e[tag=new_stand,limit=1] remove new_stand

setblock ~ ~ ~-1 minecraft:bedrock
setblock ~ ~-1 ~-1 minecraft:bedrock
setblock ~ ~-1 ~ minecraft:bedrock
setblock ~ ~-1 ~1 minecraft:bedrock
setblock ~ ~ ~ minecraft:soul_lantern