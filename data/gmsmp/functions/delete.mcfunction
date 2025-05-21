#removeing all the code in the datapack
execute as @a[scores={REMOVE_ALL_CODE=1..}] at @s run team remove vp1
execute as @a[scores={REMOVE_ALL_CODE=1..}] at @s run bossbar remove minecraft:wizard_health
execute as @a[scores={REMOVE_ALL_CODE=1..}] at @s run scoreboard objectives remove vampires_off
execute as @a[scores={REMOVE_ALL_CODE=1..}] at @s run scoreboard objectives remove vampires_on
execute as @a[scores={REMOVE_ALL_CODE=1..}] at @s run scoreboard objectives remove wizard_bossbar
execute as @a[scores={REMOVE_ALL_CODE=1..}] at @s run scoreboard objectives remove wizard_start
execute as @a[scores={REMOVE_ALL_CODE=1..}] at @s run scoreboard objectives remove wizard_end
execute as @a[scores={REMOVE_ALL_CODE=1..}] at @s run playsound block.end_gateway.spawn master @s ~ ~ ~ 1
execute as @a[scores={REMOVE_ALL_CODE=1..}] at @s run tellraw @s {"bold":true,"color":"#00f3ef","text":" [ALL CODE HAS BEEN REMOVED] "}
execute as @a[scores={REMOVE_ALL_CODE=1..}] at @s run scoreboard objectives remove REMOVE_ALL_CODE