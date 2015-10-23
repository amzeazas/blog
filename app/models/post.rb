class Post < ActiveRecord::Base
  validates :title, :body, :presence => true
  has_and_belongs_to_many :tags
  has_many :comments
end
