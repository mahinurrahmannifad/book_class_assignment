//Mahinur Rahman Nifad
class Book {
  String title;
  String author;
  int publicationYear;
  int pagesRead = 0;

  static int totalBooks = 0;

  Book(this.title,
      this.author,
      this.publicationYear,
      this.pagesRead)
  {
    totalBooks++;
  }

  void read(int pages)
  {
    pagesRead += pages;
  }
  int getPagesRead()
  {
    return pagesRead;
  }
  String getTitle()
  {
    return title;
  }
  String getAuthor()
  {
    return author;
  }
  int getPublicationYear()
  {
    return publicationYear;
  }
  int getBookAge()
  {
    int currentYear = DateTime.now().year;
    return currentYear- publicationYear;
  }
}

void main(){
  Book book1 = Book('Jochna O Jononir Golpo', 'Humayun Ahmed', 2004, 527);
  Book book2 = Book('Deyal', 'Humayun Ahmed', 2013, 198);
  Book book3 = Book('Parineeta', 'Sarat Chandra Chattopadhyay', 1914, 37);

  book1.read(5);
  book2.read(13);
  book3.read(19);

  print('Book 1: ${book1.getTitle()} by ${book1.getAuthor()}, published in ${book1.getPublicationYear()}, pages read: ${book1.getPagesRead()}, age: ${book1.getBookAge()} years');
  print('Book 2: ${book2.getTitle()} by ${book2.getAuthor()}, published in ${book2.getPublicationYear()}, pages read: ${book2.getPagesRead()}, age: ${book2.getBookAge()} years');
  print('Book 3: ${book3.getTitle()} by ${book3.getAuthor()}, published in ${book3.getPublicationYear()}, pages read: ${book3.getPagesRead()}, age: ${book3.getBookAge()} years');

  print('Total number of books created: ${Book.totalBooks}');
}