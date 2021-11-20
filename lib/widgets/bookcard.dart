import 'package:flutter/material.dart';

const Color myColor = Color(0xFFAFAFF2);

class BookCard extends StatefulWidget {
  const BookCard({Key? key}) : super(key: key);

  @override
  State<BookCard> createState() => _BookCardState();
}

class _BookCardState extends State<BookCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          RichText(
            text: TextSpan(
              style: DefaultTextStyle.of(context).style,
              children: const <TextSpan>[
                TextSpan(
                    text: 'Title: ',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                TextSpan(
                    text: 'The Stranger In The LifeBoat',
                    style: TextStyle(fontSize: 18)),
              ],
            ),
          ),
          RichText(
            text: TextSpan(
              style: DefaultTextStyle.of(context).style,
              children: const <TextSpan>[
                TextSpan(
                    text: 'Author: ',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                TextSpan(
                    text: 'Michael Connelly', style: TextStyle(fontSize: 18)),
              ],
            ),
          ),
          RichText(
            text: TextSpan(
              style: DefaultTextStyle.of(context).style,
              children: const <TextSpan>[
                TextSpan(
                    text: 'Rank: ',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                TextSpan(text: '#1', style: TextStyle(fontSize: 18)),
              ],
            ),
          ),
          Image.network(
              'https://storage.googleapis.com/du-prd/books/images/9780062888341.jpg',
              scale: 2.5),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const <Widget>[
              Icon(
                Icons.favorite,
                color: Colors.black,
                size: 40.0,
                semanticLabel: 'Text to announce in accessibility modes',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
