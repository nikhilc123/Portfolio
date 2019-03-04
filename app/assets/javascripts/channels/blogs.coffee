## Load the turbolinks for faster performance
#jQuery(document).on 'turbolinks:load', ->
#  # load the id from div
#  comments = $('#comments')
#  # check if the comment already exists
#  if comments.length > 0
#    App.global_chat = App.cable.subscriptions.create {
#      channel: 'BlogsChannel'
#      blog_id: comments.data('blog-id')
#    },
#      connected: ->
#        # Called when the subscription is ready for use on the serve
#      disconnected: ->
#        # Called when the subscription has been terminated by the server
#      received: (data) ->
#      # append the data to comments/div
#        comments.append data['comment']
#      send_comment: (comment, blog_id) ->
#        @perform 'comment', comment: comment, blog_id: blog_id
#
#  # when you are trying to create a new comment
#  # new_comment id is default for the form
#  $('#new_comment').submit (e), ->
#      # store the instance inside instance variable
#      $this = $(this)
#      # find the content
#      text_area = $this.find('#comment_content')
#      # check if the content is present by trimming white spaces, new lines, tabs, etc.
#      if $.trim(text_area.val()).length > 1
#        App.global_chat.send_comment text_area.val(),
#          comments.data('blog-id')
#          #remove the value you added, because you want to empty it after you added
#          text_area.val('')
#      # prevent to load the page, by default it loads
#      # should add the comment while you are on that page
#      e.preventDefault()
#      return false
#


jQuery(document).on 'turbolinks:load', ->
  comments = $('#comments')
  if comments.length > 0
    App.global_chat = App.cable.subscriptions.create {
      channel: "BlogsChannel"
      blog_id: comments.data('blog-id')
    },
      connected: ->
      disconnected: ->
      received: (data) ->
        comments.append data['comment']
      send_comment: (comment, blog_id) ->
        @perform 'send_comment', comment: comment, blog_id: blog_id
  $('#new_comment').submit (e) ->
    $this = $(this)
    textarea = $this.find('#comment_content')
    if $.trim(textarea.val()).length > 1
      App.global_chat.send_comment textarea.val(),
        comments.data('blog-id')
      textarea.val('')
    e.preventDefault()
    return false