## Place all the behaviors and hooks related to the matching controller here.
## All this logic will automatically be available in application.js.
## You can use CoffeeScript in this file: http://coffeescript.org/
#
ready = undefined
set_positions = undefined

#update each portfolio when dragged
set_positions = ->
#loop over each card item
  $('.card-body').each (i) ->
    # starts with 0th index, so i + 1
    # assign the id to data pos
    $(this).attr 'data-pos', i+1
    return
  return

## load set position function which sets the id to data pos
## load sortable
## bind the sortable function to sort update default function which updates when you drag
## create empty array
## set the position - takes the sorted array
## iterate over sorted array
## push the sorted id and position to updated_order array
## pass the data to the rails controller using ajax

ready = ->
  set_positions()
  $('.sortable').sortable()
  $('.sortable').sortable().bind 'sortupdate', (e, ui) ->
    updated_order = []
    set_positions()
    $('.card-body').each (i) ->
      updated_order.push
        id: $(this).data('id')
        position: i + 1
      return
    $.ajax
      type: 'PUT'
      url: '/portvolios/sort'
      data: order: updated_order
    return
  return

$(document).ready ready