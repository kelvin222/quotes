import 'package:flutter/material.dart';
import 'quote_card.dart';
import 'quote.dart';

void main() => runApp(MaterialApp(
  home: QuoteList(),
));

class QuoteList extends StatefulWidget {

  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes =[
    Quote(author: 'Hp Omen', text: 'HP GAMING LAPTOP INTEL CORE i5 '),
    Quote(author: 'Hp Notebook', text: 'HP Notebook - 14-cf2216nia'),
    Quote(author: 'Hp Pavilion', text: 'HP Pavilion x360 Convertible 15-er0014nia'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('3nity Qoutes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((quote) => QuoteCard(
            quote: quote,
          delete: () {
              setState(() {
                quotes.remove(quote);
              });
          }
        )).toList(),
      )
    );
  }
}
