class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, presence: true

  before_save :correct_slug!

  acts_as_taggable

  def to_param
    slug.parameterize
  end

  def tag_list
    tags.map(&:name).join(", ")
  end

  private

  def correct_slug!
    self.slug = title.parameterize
  end
end
