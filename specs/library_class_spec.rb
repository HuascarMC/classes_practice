require('minitest/autorun')
require('minitest/rg')
require_relative('../library_class.rb')

class TestLibrary < Minitest::Test

  def setup
    @books = Library.new(
      [
    {
      title: "into the wild",
      rental_details: {
      student_name: "Yoni",
      date: "monday"
      }
    },
    {
      title: "sophie's world",
      rental_details: {
      student_name: "Andre",
      date: "tuesday"
      }
    }
  ]
)
  end

  $books_array = [
    {
      title: "into the wild",
      rental_details: {
        student_name: "Yoni",
        date: "monday"
      }
    },
    {
      title: "sophie's world",
      rental_details: {
        student_name: "Andre",
        date: "tuesday"
      }
    }
  ]

    def test_list_books
      assert_equal($books_array, @books.list_books)
    end

    def test_book_by_name
      assert_equal($books_array[1], @books.book_by_name('sophie\'s world'))
    end

    def test_book_by_name_rental_details
      assert_equal($books_array[0][:rental_details], @books.book_by_name_rental_details("into the wild"))
    end

    def test_add_book
      book =
       {
        title: 'do i understand?',
        rental_details: {
          student_name: "",
          date: ""
        }
      }
     assert_equal(3, @books.add_book(book))
    end

# Create a method that changes the rental details of a book by taking
#  in the title of the book, the student renting it and the date it's
#  due to be returned.
    def test_set_rental_details
      result = {
        student_name: "Sam",
        date: "thursday"
      }
      # book = $books_array[0][:rental_details]
      assert_equal(result, @books.set_rental_details("into the wild", "Yoni", "monday"))
    end

end
