# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_12_02_113048) do

  create_table "authors", force: :cascade do |t|
    t.string "email"
    t.string "firstname"
    t.string "lastname"
  end

  create_table "authors_books", force: :cascade do |t|
    t.integer "author_id"
    t.integer "book_id"
    t.index ["author_id"], name: "index_authors_books_on_author_id"
    t.index ["book_id"], name: "index_authors_books_on_book_id"
  end

  create_table "authors_magazines", force: :cascade do |t|
    t.integer "author_id"
    t.integer "magazine_id"
    t.index ["author_id"], name: "index_authors_magazines_on_author_id"
    t.index ["magazine_id"], name: "index_authors_magazines_on_magazine_id"
  end

  create_table "books", force: :cascade do |t|
    t.string "title"
    t.string "isbn"
    t.string "description"
  end

  create_table "magazines", force: :cascade do |t|
    t.string "title"
    t.string "isbn"
    t.date "publishedAt"
  end

end
