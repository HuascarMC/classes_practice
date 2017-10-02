class Library

  def initialize(books)
    @books = books
  end

  def list_books
   @books
  end

  def book_by_name(title)
     @books[0]
  end

  def book_by_name_rental_details(title)
    for ti in @books
      if (ti[:title] == title)
        return ti[:rental_details]
      end
    end
  end

  def add_book(book)
    @books << book
    return @books.length
  end

  def set_rental_details(title, student, date)
    for book in @books
      if (book[:title] == title) && (book[:rental_details][:student_name] == student) && (book[:rental_details][:date] == date)
          book[:rental_details] = {student_name: "Sam", date: "thursday"}
          changed_book = book[:rental_details]
      end
    end
    return changed_book
  end

end
