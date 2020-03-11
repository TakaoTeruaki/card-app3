class Post < ApplicationRecord
  validates :hospital, :holiday, presence: true
  belongs_to :user
end
