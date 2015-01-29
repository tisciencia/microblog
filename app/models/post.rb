class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, presence: true

  before_save :correct_slug!

  def to_param
    slug.parameterize
  end

  private

  def correct_slug!
    self.slug = title.parameterize
  end
end
