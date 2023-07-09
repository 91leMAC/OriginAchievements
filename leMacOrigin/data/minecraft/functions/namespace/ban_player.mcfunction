# Vérifier si le joueur est mort
execute as @a[tag=ban_timer] unless entity @s[tag=!ban_timer] run tag @s add ban_timer_check

# Vérifier si le joueur a récemment respawné après la mort
execute as @a[tag=ban_timer_check] at @s unless score @s minecraft.custom:minecraft.deaths matches ..1 run tag @s add ban_timer_respawned

# Bannir le joueur en lui ajoutant un tag
execute as @a[tag=ban_timer_respawned] run tag @s add banned
tag @s remove ban_timer_respawned

# Enlever le tag de bannissement après 15 minutes
schedule function namespace:unban_player 900t
