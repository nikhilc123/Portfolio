module DefaultPageTitle
  extend ActiveSupport::Concern

  included do
    before_action :set_page_defaults
  end

  def set_page_defaults
    @page_title = "My Portfolio | My Portfolio website"
    @seo_keywords = "Nikhil Chikorde portfolio"
  end
end