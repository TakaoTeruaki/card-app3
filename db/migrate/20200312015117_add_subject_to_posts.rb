class AddSubjectToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :subject, :text
  end
end
