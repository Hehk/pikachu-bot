module.exports = (robot) ->
    robot.hear /pikachu/i, (msg) ->
        msg.send "Pika pika!"
        
    robot.hear /pikachu use lightning bolt/i, (msg) ->
        msg.send "http://static.giantbomb.com/uploads/original/9/95666/1884004-suuuuup_pikachu_animation_pokemon_kanto_thunderbolt.gif"
        