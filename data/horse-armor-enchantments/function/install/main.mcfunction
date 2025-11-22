## This function should be executed as each player.
# Example: execute as @a run function horse-armor-enchantments:replace/replace_horse_armor

# For every horse-armor item type: count how many the player has, remove them all,
# set ha_table to select the corresponding loottable, copy count into ha_count
# and invoke the generic loop to give that many loottable items.

# create scoreboard
scoreboard objectives add ha_temp dummy
scoreboard objectives add ha_count dummy
scoreboard objectives add ha_table dummy

### Leather
execute store result score @s ha_temp run clear @s minecraft:leather_horse_armor 0
execute as @s if score @s ha_temp matches 1.. run clear @s minecraft:leather_horse_armor
execute as @s if score @s ha_temp matches 1.. run scoreboard players operation @s ha_count = @s ha_temp
execute as @s if score @s ha_temp matches 1.. run scoreboard players set @s ha_table 1
execute as @s if score @s ha_temp matches 1.. run function horse-armor-enchantments:install/loop_give

### Iron
execute store result score @s ha_temp run clear @s minecraft:iron_horse_armor 0
execute as @s if score @s ha_temp matches 1.. run clear @s minecraft:iron_horse_armor
execute as @s if score @s ha_temp matches 1.. run scoreboard players operation @s ha_count = @s ha_temp
execute as @s if score @s ha_temp matches 1.. run scoreboard players set @s ha_table 2
execute as @s if score @s ha_temp matches 1.. run function horse-armor-enchantments:install/loop_give

### Golden
execute store result score @s ha_temp run clear @s minecraft:golden_horse_armor 0
execute as @s if score @s ha_temp matches 1.. run clear @s minecraft:golden_horse_armor
execute as @s if score @s ha_temp matches 1.. run scoreboard players operation @s ha_count = @s ha_temp
execute as @s if score @s ha_temp matches 1.. run scoreboard players set @s ha_table 3
execute as @s if score @s ha_temp matches 1.. run function horse-armor-enchantments:install/loop_give

### Diamond
execute store result score @s ha_temp run clear @s minecraft:diamond_horse_armor 0
execute as @s if score @s ha_temp matches 1.. run clear @s minecraft:diamond_horse_armor
execute as @s if score @s ha_temp matches 1.. run scoreboard players operation @s ha_count = @s ha_temp
execute as @s if score @s ha_temp matches 1.. run scoreboard players set @s ha_table 4
execute as @s if score @s ha_temp matches 1.. run function horse-armor-enchantments:install/loop_give

### Netherite
execute store result score @s ha_temp run clear @s minecraft:netherite_horse_armor 0
execute as @s if score @s ha_temp matches 1.. run clear @s minecraft:netherite_horse_armor
execute as @s if score @s ha_temp matches 1.. run scoreboard players operation @s ha_count = @s ha_temp
execute as @s if score @s ha_temp matches 1.. run scoreboard players set @s ha_table 5
execute as @s if score @s ha_temp matches 1.. run function horse-armor-enchantments:install/loop_give

### Copper
execute store result score @s ha_temp run clear @s minecraft:copper_horse_armor 0
execute as @s if score @s ha_temp matches 1.. run clear @s minecraft:copper_horse_armor
execute as @s if score @s ha_temp matches 1.. run scoreboard players operation @s ha_count = @s ha_temp
execute as @s if score @s ha_temp matches 1.. run scoreboard players set @s ha_table 6
execute as @s if score @s ha_temp matches 1.. run function horse-armor-enchantments:install/loop_give

# remove scoreboards
scoreboard objectives remove ha_temp
scoreboard objectives remove ha_count
scoreboard objectives remove ha_table