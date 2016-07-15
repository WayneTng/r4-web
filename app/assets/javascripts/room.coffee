$(document).on 'keypress', '[data-behavior~=room_speaker]', (event) ->
  if event.keyCode is 13 # return = send
    App.room.perform('speak', message: @value)
    event.target.value = ''
    event.preventDefault()
