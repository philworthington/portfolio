class Post < ActiveRecord::Base
  attr_accessible :content, :title, :published
  validates_presence_of :title, :content
  belongs_to :author, class_name: "User"

  scope :published, where(published: true)

  def publish!
    published = true
    save!
  end
end
