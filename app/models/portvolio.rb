class Portvolio < ApplicationRecord
  validates_presence_of :title, :subtitle, :body, :main_image, :thumb_image

  scope :ror_angular_items, -> { where(subtitle: "Angular") }

  after_initialize :set_defaults

  def set_defaults
    # || because if you are editing a file you don't want to override
    # check if it exist, if nil then url
    self.main_image ||= "https://via.placeholder.com/400X400"
    self.thumb_image ||= "https://via.placeholder.com/200x200"
  end
end
