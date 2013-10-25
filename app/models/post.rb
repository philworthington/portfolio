class Post < ActiveRecord::Base
  attr_accessible :content, :title, :published
  validates_presence_of :title, :content
  belongs_to :author, class_name: "User"
  has_many :comments, as: :commentable

  scope :published, where(published: true)

  def publish!
    published = true
    save!
  end
end
