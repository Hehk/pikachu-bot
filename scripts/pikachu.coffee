module.exports = (robot) ->
  robot.respond '', (msg) ->
    msg.send 'Pika pika!'


  #Random commands
  robot.respond /use lightning bolt/i, (msg) ->
    msg.send 'http://static.giantbomb.com/uploads/original/9/95666/1884004-suuuuup_pikachu_animation_pokemon_kanto_thunderbolt.gif'

  robot.respond /pokemon/i, (msg) ->
    msg.send 'http://static.fjcdn.com/pictures/Pikachu+i+choose+you+yes+this+is+a+repost+but+does_65e106_3392724.jpg'

  robot.respond /where are you\?/i, (msg) ->
    msg.send 'http://fc01.deviantart.net/fs70/i/2014/044/c/0/brb____building_an_empire__d_by_itsbirdyart-d76c43y.jpg'

  robot.respond /theme song/i, (msg) ->
    msg.send 'https://www.youtube.com/watch?v=JuYeHPFR3f0'

  robot.respond /rap/i, (msg) ->
    msg.send 'https://www.youtube.com/watch?v=xMk8wuw7nek'


  #Useful commands
  robot.respond /emails/i, (msg) ->
    msg.send 'Jeffrey: tobeja@mail.uc.edu\nTejas: deshpata@mail.uc.edu\nGarrett: scholtgt@mail.uc.edu\nKyle: henderk8@mail.uc.edu'

  robot.respond /phone numbers/i, (msg) ->
    msg.send 'Jeffrey: \nTejas: (513)223-1671\nGarrett: (513)869-0719\nKyle: (513)550-3175'
