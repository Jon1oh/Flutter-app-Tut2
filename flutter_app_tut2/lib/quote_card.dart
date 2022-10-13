import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;
  final VoidCallback delete;
  QuoteCard({required this.quote, required this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      quote.text,
                      style: TextStyle(fontSize: 18.0, color: Colors.grey[600]),
                    ), // don't need ${} because data is not outputted as string
                    SizedBox(height: 6.0),
                    Text(quote.author,
                        style:
                            TextStyle(fontSize: 14.0, color: Colors.grey[800])),
                  ],
                ),
                ElevatedButton.icon(
                  onPressed: delete,
                  label: Text('Delete quote'),
                  icon: Icon(Icons.delete),
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.red[800]
                  )
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
