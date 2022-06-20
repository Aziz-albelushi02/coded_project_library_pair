class Book {
  int id = 0;
  String title;
  String author;
  List<String> genre;
  bool available;
  List<int> borrowedBy;
// constructor
  Book({
    required this.id,
    required this.title,
    required this.author,
    required this.genre,
    required this.available,
    required this.borrowedBy,
  });

  
}

List<Book> books = [
     Book(
      id: 1,
      author: "Jordan Peterson",
      title: "12 Rules for Life: An Antidote to Chaos",
      genre: ["Self-Help"],
      available: false,
      borrowedBy: [3],
     ),
    Book(
      id: 2,
      author: "Blake Crouch",
      title: "Dark Matter",
      genre: ["Sci-Fi", "Thriller"],
      available: false,
      borrowedBy: [3],
    ),
    Book(
      id: 3,
      author: "Robin Sloan",
      title: "Mr. Penumbra's 24-Hour Bookstore", 
      genre: ["Suspense", "Fantasy"],
      available: false,
      borrowedBy: [1, 3, 5, 1],
    ),
    Book(
      id: 4,
      author: "Paul Kalanithi",
      title: "When Breath Becomes Air",
      genre: ["Biography"],
      available: true,
      borrowedBy: [2, 5],
    ),
    Book(
      id: 5,
      author: "Eric Ries",
      title: "The Lean Startup",
      genre: ["Business", "Entrepreneurship"],
      available: false,
      borrowedBy: [4, 1, 2],
    ),
    Book(
      id: 6,
      author: "George R.R. Martin",
      title: "A Storm of Swords",
      genre: ["Fantasy"],
      available: true,
      borrowedBy: [],
    ),
    Book(
      id: 7,
      author: "Leigh Bardugo",
      title: "Six of Crows",
      genre: ["Fantasy"],
      available: false,
      borrowedBy: [4, 3, 2, 1, 5],
    ),
    Book(
      id: 8,
      author: "Agatha Christie",
      title: "Curtain: Poirot's Last Case",
      genre: ["Crime", "Mystery"],
      available: false,
      borrowedBy: [3, 5],
    ),
    Book(
      id: 9,
      author: "Elif Shafak",
      title: "The Forty Rules of Love",
      genre: ["Fiction"],
      available: false,
      borrowedBy: [5, 1],
    ),
    Book(
      id: 10,
      author: "Leigh Bardugo",
      title: "The Language of Thorns: Midnight Tales and Dangerous Magic",
      genre: ["Fantasy"],
      available: false,
      borrowedBy: [5],
    ),
  ];
