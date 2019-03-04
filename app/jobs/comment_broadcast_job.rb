# # RELATE THIS COMMENT BROADCAST TO BROADCASTING A CHANNEL ON TV FOR PEOPLE TO WATCH
#
# # 1. Create a job for people to watch television
# # 2. Default to queue.. in the order FIFO
# # 3. Perform method from the job by accepting channel parameter
# # 4. Setup the server and broadcast it
# # 5. pass name_id_channel (50 people could be watching different channels on tv, need to have uniqueness
#     # render the channel as parameter
# # 6. render channel function:
#   #1. Call the Controller and render partial and locals

class CommentBroadcastJob < ApplicationJob
  queue_as :default

  def perform(comment)
    ActionCable.server.broadcast "blogs_#{comment.blog.id}_channel", comment: render_comment(comment)
  end

  private

  def render_comment(comment)
    CommentsController.render partial: 'comments/comment', locals: { comment: comment }
  end
end
