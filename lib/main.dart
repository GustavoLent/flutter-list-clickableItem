import 'package:flutter/material.dart';
import 'package:list_clickable_itens/createListItens.dart';
import 'package:list_clickable_itens/listItemModel.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<ListItemModel> listItems = createListItens();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lista com itens clicáveis"),
      ),
      body: ListView.builder(
        itemCount: listItems.length,
        itemBuilder: (context, index) {
          ListItemModel currItem = listItems[index];

          return ListTile(
            title: Text('${currItem.text}'),
            onTap: () => currItem.onTap(context),
          );
        },
      ),
    );
  }
}
