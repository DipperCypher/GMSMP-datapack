#main code that runs the effects for the wizard
execute as @a[scores={wizard_start=1..}] at @s run function live:wizard

#remove all the wizard code
execute as @a[scores={wizard_end=1..}] at @s run function live:wizard

#loop that updates the wizard health
execute store result bossbar wizard_health value run scoreboard players get Zy_mU wizard_bossbar

#vampire code invs effects
execute as @p at @s anchored eyes facing entity @a[team=vp1] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.1] run effect give @e[team=vp1] minecraft:invisibility 1 100 true
execute as @p at @s anchored eyes facing entity @a[team=vp1] eyes anchored feet positioned ^ ^ ^1 rotated as @s positioned ^ ^ ^-1 if entity @s[distance=..0.1] run effect clear @e[team=vp1] glowing

# send the "you are a vampire" msg
execute as @a[scores={vampires_on=1..}] at @s run function live:vampire

#remvoe your self as vampire
execute as @a[scores={vampires_off=1..}] at @s run function live:vampire

#DELETE ALL CODE
execute as @a[scores={REMOVE_ALL_CODE=1..}] at @s run function live:delete