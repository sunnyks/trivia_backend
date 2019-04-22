class CreateUserCats < ActiveRecord::Migration[5.2]
  def change
    create_table :user_cats do |t|
      t.references :user, foreign_key: true
      t.string :category
      t.int :totalqcount
      t.int :correct
      t.int :streak

      t.timestamps
    end
  end
end
