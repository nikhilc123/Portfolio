ready = ->
  new Typed('.element',
    strings: [
      'If you are still searching for that one person who will change your life, take a look in the mirror.'
      'Any work you put in 100% then you will be successfull.'
    ]
    typeSpeed: 0)
  return

$(document).ready ready
$(document).on 'turbolinks:load', ready
