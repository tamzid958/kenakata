import 'package:flutter/material.dart';

class AddToCart extends StatelessWidget {
  const AddToCart({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FlatButton(
            onPressed: () => {},
            color: Colors.orange[900],
            padding: EdgeInsets.all(5.0),
            minWidth: 150,
            height: 55,
            textColor: Colors.white,
            child: Row(
              // Replace with a Row for horizontal icon + text
              children: <Widget>[
                Text("Add to Cart "),
                Icon(Icons.shopping_bag_outlined),
              ],
            ),
          ),
          FlatButton(
            onPressed: () => {},
            color: Colors.black,
            padding: EdgeInsets.all(5.0),
            minWidth: 150,
            height: 55,
            textColor: Colors.white,
            child: Row(
              // Replace with a Row for horizontal icon + text
              children: <Widget>[
                Text("Visit Shop "),
                Icon(Icons.arrow_forward_ios),
              ],
            ),
          ),
        ]);
  }
}
