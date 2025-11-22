## Generic loop that gives loottable items according to ha_table, ha_count
# Expects the following player scores to be set before calling:
# - ha_table: 1..6 to choose loottable
# - ha_count: number of items to give

execute as @s if score @s ha_table matches 1 run give @s minecraft:leather_horse_armor
execute as @s if score @s ha_table matches 2 run give @s minecraft:iron_horse_armor
execute as @s if score @s ha_table matches 3 run give @s minecraft:golden_horse_armor
execute as @s if score @s ha_table matches 4 run give @s minecraft:diamond_horse_armor
execute as @s if score @s ha_table matches 5 run give @s minecraft:netherite_horse_armor
execute as @s if score @s ha_table matches 6 run give @s minecraft:copper_horse_armor

# decrement and loop if needed
scoreboard players remove @s ha_count 1
execute as @s if score @s ha_count matches 1.. run function horse-armor-enchantments:install/loop_give