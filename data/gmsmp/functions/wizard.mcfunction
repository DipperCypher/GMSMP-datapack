#main code that runs the effects for the wizard
execute as @a[scores={wizard_start=1..}] at @s run summon lightning_bolt ~ ~ ~4
execute as @a[scores={wizard_start=1..}] at @s run summon lightning_bolt ~ ~4 ~
execute as @a[scores={wizard_start=1..}] at @s run summon lightning_bolt ~4 ~ ~
execute as @a[scores={wizard_start=1..}] at @s run effect give @s strength infinite 20
execute as @a[scores={wizard_start=1..}] at @s run effect give @s health_boost infinite 40
execute as @a[scores={wizard_start=1..}] at @s run effect give @s regeneration 10 200
execute as @a[scores={wizard_start=1..}] at @s run effect give @s glowing infinite 20
execute as @a[scores={wizard_start=1..}] at @s run playsound minecraft:item.goat_horn.sound.5 master @a ~ ~ ~ 10
execute as @a[scores={wizard_start=1..}] at @s run bossbar set wizard_health players @a
execute as @a[scores={wizard_start=1..}] at @s run scoreboard players enable Zy_mU wizard_end
execute as @a[scores={wizard_start=1..}] at @s run bossbar set wizard_health visible true
execute as @a[scores={wizard_start=1..}] at @s run scoreboard players reset @s wizard_start

#remove all the wizard code
execute as @a[scores={wizard_end=1..}] at @s run scoreboard players reset wizard_bossbar
execute as @a[scores={wizard_end=1..}] at @s run scoreboard players enable Zy_mU wizard_start
execute as @a[scores={wizard_end=1..}] at @s run bossbar set wizard_health visible false
execute as @a[scores={wizard_end=1..}] at @s run effect clear @s health_boost
execute as @a[scores={wizard_end=1..}] at @s run effect clear @s strength
execute as @a[scores={wizard_end=1..}] at @s run effect clear @s glowing
execute as @a[scores={wizard_end=1..}] at @s run playsound minecraft:block.beacon.deactivate master @s ~ ~ ~ 1
execute as @a[scores={wizard_end=1..}] at @s run scoreboard players set @s wizard_end 0 