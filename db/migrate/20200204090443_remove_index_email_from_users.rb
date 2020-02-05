class RemoveIndexEmailFromUsers < ActiveRecord::Migration[6.0]
  def change
   remove_index :users, column: :email, unique: true
 end

 def up
  remove_index :users, :email
 end

 def down
  add_index :users, :email, unique: true
 end
end
