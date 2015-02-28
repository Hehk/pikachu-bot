# Description:
#   Generates help commands for Hubot.
#
# Commands:
#   hubot use lightning bolt - Displays a gif of Pikachu using lighning bolt.
#   hubot pokemon - Displays a funny pokemon image.
#   hubot where are you? - Displays a funny image of pikachu.
#   hubot theme song - Links the pokemon theme song.
#   hubot rap - Links the PokeRap song.
#   hubot emails - Displays the emails of each team member
#   hubot email of <name> - Displays the email of a team member
#   hubot phone numbers - Displays the phone numbers of the team members
#   hubot phone number of <name> - Displays the phone number of a team member
#
# Notes:
#   These are random commands specific to pikachu

contactInfo = [
  {
    name: 'Jeffrey',
    email: 'tobeja@mail.uc.edu',
    phone: ''
  }, {
    name: 'Tejas',
    email: 'deshpata@mail.uc.edu',
    phone: '(513) 223-1671'
  }, {
    name: 'Garrett',
    email: 'scholtgt@mail.uc.edu',
    phone: '(513) 869-0719'
  }, {
    name: 'Kyle',
    email: 'henderk8@mail.uc.edu',
    phone: '(513) 550-3175'
  }]

module.exports = (robot) ->
  robot.respond /\s*/i, (msg) ->
    msg.send 'Pika pika!'


  #Random commands -----------------------------------------------------------------------------------------------------
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

  #Useful commands -----------------------------------------------------------------------------------------------------
  robot.respond /emails/i, (msg) ->
    emit = ""
    for info in contactInfo
      emit += "#{info.name}: #{info.email}\n"

    msg.send emit.trim()

  robot.respond /email of\s*(.*)?$/i, (msg) ->
    filter = msg.match[1]
    emit = ''
    if filter
      for info in contactInfo
        if info.name.toLowerCase() == filter.trim().toLowerCase()
          emit = "#{info.name}: #{info.email}"
      if emit == ''
        emit = 'could not find a matching user'
      msg.send emit

  robot.respond /phone numbers/i, (msg) ->
    emit = ""
    for info in contactInfo
      emit += "#{info.name}: #{info.phone}\n"

    msg.send emit.trim()

  robot.respond /phone number of\s*(.*)?$/i, (msg) ->
    filter = msg.match[1]
    emit = ''
    if filter
      for info in contactInfo
        if info.name.toLowerCase() == filter.trim().toLowerCase()
          emit = "#{info.name}: #{info.phone}"
      if emit == ''
        emit = 'could not find a matching user'
      msg.send emit
