class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :slug, presence: true
  validates :content, presence: true
end
