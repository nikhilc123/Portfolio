class TopicsController < ApplicationController
  before_action :set_sidebar_topics
  layout 'blog'
  def index
    @topics = Topic.all
  end

  def show
    @topic = Topic.find(params[:id])
    if !logged_in?(:site_admin)
      @blogs = @topic.blogs.draft.recent.page(params[:page]).per(5)
    else
      @blogs = @topic.blogs.recent.page(params[:page]).per(5)
    end
  end

  #Topic where blog exists should render on topics page and on blogs page, that's why duplicate in blogs_controller
  def set_sidebar_topics
    @side_bar_topic = Topic.with_blogs
  end
end
