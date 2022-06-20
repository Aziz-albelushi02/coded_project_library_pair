class Member {
  int id;
  String firstName;
  String lastName;
  String membership;
  List<int>currentlyBorrowedBooks;

  Member({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.membership,
    required this.currentlyBorrowedBooks,
  });

  List<Member> members = [
    Member(
      id: 1,
      firstName: "Aziz",
      lastName: "AlSaffar",
      currentlyBorrowedBooks: [3, 9],
      membership: "gold", // can borrow 3 books
    ),
    Member(
      id: 2,
      firstName: "Hashim",
      lastName: "Behbehani",
      currentlyBorrowedBooks: [5],
      membership: "gold", // can borrow 3 books
    ),
    Member(
      id: 3,
      firstName: "Alhamza",
      lastName: "Abdulmonem",
      currentlyBorrowedBooks: [1, 2],
      membership: "silver", // can borrow 2 books
    ),
    Member(
      id: 4,
      firstName: "Reem",
      lastName: "AlHasawi",
      currentlyBorrowedBooks: [],
      membership: "platinum", // can borrow 5 books
    ),
    Member(
      id: 5,
      firstName: "Laila",
      lastName: "AlKandery",
      currentlyBorrowedBooks: [10, 7, 8],
      membership: "platinum", // can borrow 5 books
    ),
  ];
}
