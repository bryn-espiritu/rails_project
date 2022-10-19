class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :fname
      t.string :lname
      t.string :email
      t.string :address
      t.string :cnum
      t.timestamps
    end
  end
end
