class Portvolio < ApplicationRecord
  has_many :technologies
  # save attributes on associated records through the parent
  # Learn more https://api.rubyonrails.org/classes/ActiveRecord/NestedAttributes/ClassMethods.html
  accepts_nested_attributes_for :technologies, reject_if: lambda { |attr| attr['name'].blank? }
  include Placeholder
  validates_presence_of :title, :subtitle, :body, :main_image, :thumb_image

  scope :ror_angular_items, -> { where(subtitle: "Angular") }

  after_initialize :set_defaults

  def set_defaults
    # || because if you are editing a file you don't want to override
    # check if it exist, if nil then url
    self.main_image ||= Placeholder.image_generator(height: 400, width: 400)
    self.thumb_image ||= Placeholder.image_generator(height: 200, width: 200)
  end
end
