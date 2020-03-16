class AddTellToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :tell, :text
  end
end
