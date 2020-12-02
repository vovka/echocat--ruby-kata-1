class ViewMagazinePlain
  def display!(magazine)
    # TODO:
    out = <<~EOS
      Magazine: #{magazine.title}
      By #{magazine.authors.map { |a| "#{a.firstname} #{a.lastname}" }.join(",")}
      ISBN: #{magazine.isbn}

    EOS
    print out
  end
end
