class Portvolio < ApplicationRecord
  has_many :technologies, dependent: :destroy
  # save attributes on associated records through the parent
  # Eg. Portvolio.last.technologies
  # Learn more https://api.rubyonrails.org/classes/ActiveRecord/NestedAttributes/ClassMethods.html
  # reject if: because you are preventing the record to save on parent model if name is blank.
  accepts_nested_attributes_for :technologies,
                                allow_destroy: true,
                                reject_if: lambda { |attr| attr['name'].blank? }

  validates_presence_of :title, :subtitle, :body

  scope :ror_angular_items, -> { where(subtitle: "Angular") }


  mount_uploader :thumb_image, PortvolioUploader
  mount_uploader :main_image, PortvolioUploader


  def self.by_position
    order('position ASC')
  end
end
