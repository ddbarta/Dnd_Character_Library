class AddUserIdToDndchars < ActiveRecord::Migration[5.1]
  def change
    add_column :dndchars, :user_id, :integer
  end
end
