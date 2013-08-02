class Addstuff < ActiveRecord::Migration
  def change
    add_column :users, :rolable_id, :integer 
  end
  def down
  end
end
