# think of a model as just the window in a drivethrough to the database
# currently, this model is empty, meaning there is nobody there to even take my order
class Post < ActiveRecord::Base

  # so basically this REQUIRES that there be an image
  validates :image, presence: true

  #required by paperclip
  has_attached_file :image, style: { :medium => "640px" }
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\z/

end
