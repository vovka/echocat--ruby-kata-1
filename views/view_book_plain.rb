class ViewBookPlain
  def display!(book)
    # TODO:
    out = <<~EOS
      Book: #{book.title}
      By #{book.authors.map { |a| "#{a.firstname} #{a.lastname}" }.join(",")}
      ISBN: #{book.isbn}

    EOS
    print out
  end
end
