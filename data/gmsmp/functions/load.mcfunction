tellraw @a {"bold":true,"color":"#00f310","text":" [GMSMP datapack 0.1 ACTIVED] "}

scoreboard objectives add wizard_start trigger

#allows the player to toggle the wizard_start
scoreboard players enable DipperCypher wizard_start 

#this is the "wizard" health 
scoreboard objectives add wizard_bossbar health "wizard"
bossbar add wizard_health "Wizard Health"
bossbar set wizard_health value 20

# remove all the wizard code
scoreboard objectives add wizard_end trigger

#vapires code
scoreboard objectives add vampires_on trigger
scoreboard players enable @a vampires_on
team add vp1

#remvoe your self as vampire
scoreboard objectives add vampires_off trigger

#DELETE ALL CODE
scoreboard players enable @a REMOVE_ALL_CODE
scoreboard objectives add REMOVE_ALL_CODE trigger