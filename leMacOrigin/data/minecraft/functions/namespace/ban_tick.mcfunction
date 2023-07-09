# Vérifier si le joueur est banni
execute as @a[tag=ban_timer] run function namespace:ban_check

# Fonction de vérification pour bannir le joueur
function namespace:ban_check
execute as @a[tag=ban_timer] run function namespace:ban_player
