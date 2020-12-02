class CreateAuthorsMagazines < ActiveRecord::Migration[6.0]
  def change
    create_table :authors_magazines do |t|
      t.belongs_to :author
      t.belongs_to :magazine
    end
  end
end
