class Post < ApplicationRecord
  validates :hospital, :holiday, presence: true
  belongs_to :user
  mount_uploader :image, ImagesUploader
  
  def self.search(search)
    if search
      Post.where('hospital LIKE(?)', "%#{search}%")
    else
      Post.all
    end
  end
end
