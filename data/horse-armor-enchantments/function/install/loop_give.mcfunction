## Generic loop that gives loottable items according to ha_table, ha_count
# Expects the following player scores to be set before calling:
# - ha_table: 1..6 to choose loottable
# - ha_count: number of items to give

execute as @s if score @s ha_table matches 1 run loot give @s loot horse-armor-enchantments:horse_armor/leather_horse_armor
execute as @s if score @s ha_table matches 2 run loot give @s loot horse-armor-enchantments:horse_armor/iron_horse_armor
execute as @s if score @s ha_table matches 3 run loot give @s loot horse-armor-enchantments:horse_armor/golden_horse_armor
execute as @s if score @s ha_table matches 4 run loot give @s loot horse-armor-enchantments:horse_armor/diamond_horse_armor
execute as @s if score @s ha_table matches 5 run loot give @s loot horse-armor-enchantments:horse_armor/netherite_horse_armor
execute as @s if score @s ha_table matches 6 run loot give @s loot horse-armor-enchantments:horse_armor/copper_horse_armor

# decrement and loop if needed
scoreboard players remove @s ha_count 1
execute as @s if score @s ha_count matches 1.. run function horse-armor-enchantments:install/loop_give