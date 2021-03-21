import 'package:flutter/material.dart';
import 'package:list_clickable_itens/listItemModel.dart';

List<ListItemModel> createListItens() {
  ListItemModel item1 = ListItemModel(
    "Item 1",
    (BuildContext context) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Cliquei no item 1"),
          duration: Duration(seconds: 1),
        ),
      );
    },
  );

  ListItemModel item2 = ListItemModel(
    "Item 2",
    (BuildContext context) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Cliquei no item 2"),
          duration: Duration(seconds: 1),
        ),
      );
    },
  );

  ListItemModel item3 = ListItemModel(
    "Item 3",
    (BuildContext context) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Cliquei no item 3"),
          duration: Duration(seconds: 1),
        ),
      );
    },
  );

  return [item1, item2, item3];
}
