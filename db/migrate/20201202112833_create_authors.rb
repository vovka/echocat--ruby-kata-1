class CreateAuthors < ActiveRecord::Migration[6.0]
  def change
    create_table :authors do |t|
      t.string :email, unique: true
      t.string :firstname
      t.string :lastname
    end
  end
end
