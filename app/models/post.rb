class Post < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  validates :title, :summary, :body, presence: true
end
