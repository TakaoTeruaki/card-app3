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
  # def self.search(search)
  #   if search
  #     # Post.where('hospital LIKE(?)', "%#{search}%")
  #     # @post = User.find_by(id: @post.user_id)
  #     Post.where('(hospital LIKE(?)) AND (user_id = ?)', search, current_user.id)
  #   else
  #     Post.all
  #   end
  end
end
