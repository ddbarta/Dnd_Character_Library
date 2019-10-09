class CreateDndchars < ActiveRecord::Migration[5.1]
  def change
    create_table :dndchars do |t|
      t.string :charname
      t.string :charrace
      t.string :charclass
      t.string :charlevel

      t.timestamps
    end
  end
end
