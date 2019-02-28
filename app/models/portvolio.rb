class Portvolio < ApplicationRecord
  validates_presence_of :title, :subtitle, :body, :main_image, :thumb_image

  scope :ror_angular_items, -> { where( subtitle: "Angular" ) }
end
