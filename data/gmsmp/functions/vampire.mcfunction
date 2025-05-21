#give effects and send msg to the players who is vampire
execute as @a[scores={vampires_on=1..}] at @s run team join vp1 @s
execute as @a[scores={vampires_on=1..}] at @s run tellraw @p {"bold":true,"color":"#f32400","text":" [you are a vapmire] "}
execute as @a[scores={vampires_on=1..}] at @s run playsound block.end_portal.spawn master @s ~ ~ ~ 1
execute as @a[scores={vampires_on=1..}] at @s run scoreboard players enable @s vampires_off
execute as @a[scores={vampires_on=1..}] at @s run scoreboard players reset @s vampires_on

#remvoe your self as vampire
execute as @a[scores={vampires_off=1..}] at @s run team leave @s
execute as @a[scores={vampires_off=1..}] at @s run tellraw @p {"bold":true,"color":"#f32400","text":" [no loner vampire] "}
execute as @a[scores={vampires_off=1..}] at @s run playsound entity.ghast.death master @s ~ ~ ~ 1
execute as @a[scores={vampires_off=1..}] at @s run scoreboard players enable @s vampires_on
execute as @a[scores={vampires_off=1..}] at @s run scoreboard players reset @s vampires_off