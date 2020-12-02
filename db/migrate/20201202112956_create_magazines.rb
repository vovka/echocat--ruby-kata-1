class CreateMagazines < ActiveRecord::Migration[6.0]
  def change
    create_table :magazines do |t|
      t.string :title
      t.string :isbn, unique: true
      # authors
      t.date :publishedAt
    end
  end
end
