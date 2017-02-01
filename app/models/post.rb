class Post < ActiveRecord::Base
  validates :title, :summary, :body, presence: true
end
