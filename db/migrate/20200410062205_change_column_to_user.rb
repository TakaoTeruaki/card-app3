class ChangeColumnToUser < ActiveRecord::Migration[5.2]
  def change
    def up
      change_column :users, :nickname, :string, null: false
    end
  
    def down
      change_column :users, :nickname, :string
    end
  end
end
