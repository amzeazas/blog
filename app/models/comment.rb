class Comment < ActiveRecord::Base
  validates :text, :presence => true
  belongs_to :post, :user
end
