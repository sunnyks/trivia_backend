class CreateUserCats < ActiveRecord::Migration[5.2]
  def change
    create_table :user_cats do |t|
      t.references :user, foreign_key: true
      t.string :category
      t.integer :totalqcount
      t.integer :correct
      t.integer :streak

      t.timestamps
    end
  end
end
