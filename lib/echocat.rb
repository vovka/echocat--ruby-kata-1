# frozen_string_literal: true

module Echocat
  def self.run
    DataManager.new(%i[authors books magazines]).import_csv!
    ViewManager.new(%i[books magazines]).display!
    a_book = Book.find_by_isbn("2221-5548-8585")
    puts "=" * 10
    ViewBookPlain.new.display!(a_book)
    puts "=" * 10
    # TODO:
    # Find all books and magazines by their authors’ email.
    # Print out all books and magazines with all their details sorted by title. This sort should be done for books and magazines together.
  end
end
