import 'package:flutter/material.dart';
import 'book.dart';

void main() => runApp(MaterialApp(
      home: Books(),
    ));

class Books extends StatefulWidget {
  @override
  _BooksState createState() => _BooksState();
}

class _BooksState extends State<Books> {
  List<Book> book = [
    Book('Book1', 'XYZ'),
    Book('Book2', 'XYZ'),
    Book('Book3', 'XYZ'),
    Book('Book4', 'XYZ'),
  ];
  
   Widget book_Template(books) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Card(
          color: Colors.amber[100],
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                books.text,
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
            ),
            SizedBox(height: 10.0),
            Padding(
              padding: const EdgeInsets.all(5),
              child: Text(
                books.author,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            RaisedButton(
              child: Text('View Comments'),
            )
          ])),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Booklist'),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: Column(
          children: book.map((books) => book_Template(books)).toList(),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print('add books for user');
          },
          child: Text('add'),
          backgroundColor: Colors.black,
        ));
  }
}
