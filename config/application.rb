require 'active_record'
require 'active_support'
require 'active_support/core_ext'
require 'byebug'

ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: 'db/development.sqlite3'
)

require "./models/author"
require "./models/book"
require "./models/magazine"

require "./views/view_book_plain"
require "./views/view_magazine_plain"

require "./lib/data_manager"
require "./lib/view_manager"
