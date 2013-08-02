class Rmtypetouser < ActiveRecord::Migration
  def change
    remove_column :users, :user_type
  end

  def down
  end
end
