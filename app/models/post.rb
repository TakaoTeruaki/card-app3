class Post < ApplicationRecord
  validates :hospital, :holiday, presence: true
  belongs_to :user
  mount_uploader :image, ImagesUploader
end
