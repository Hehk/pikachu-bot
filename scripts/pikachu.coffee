module.exports = (robot) ->
    robot.hear /pikachu/i, (msg) ->
        msg.send "Pika pika!"
        
    robot.hear /pikachu use lightning bolt/i, (msg) ->
        msg.send "http://static.giantbomb.com/uploads/original/9/95666/1884004-suuuuup_pikachu_animation_pokemon_kanto_thunderbolt.gif"
        
    robot.hear /pokemon/i, (msg) ->
        msg.send "http://static.fjcdn.com/pictures/Pikachu+i+choose+you+yes+this+is+a+repost+but+does_65e106_3392724.jpg"
        
    robot.hear /emails/i, (msg) ->
        msg.send "Jeffrey: tobeja@mail.uc.edu\nTejas: deshpata@mail.uc.edu\nGarrett: scholtgt@mail.uc.edu\nKyle: henderk8@mail.uc.edu"
        
    robot.hear /phone numbers/i, (msg) ->
        msg.send "Jeffrey: \nTejas: (513)223-1671\nGarrett: (513)869-0719\nKyle: (513)550-3175"