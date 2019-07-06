import 'package:flutter/material.dart';

void main() => {
      runApp(MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Money Flow Management',
        home: Scaffold(
          appBar: AppBar(
            title: Text('My Fist App'),
          ),
          body: getListView(),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              debugPrint('FAB Clicked');
            },
            child: Icon(Icons.add),
            tooltip: "Add One more Item",
          ),
        ),
      ))
    };
// Widget getListView() {
//   var listview = ListView(
//     children: <Widget>[
//       ListTile(
//         leading: Icon(Icons.landscape),
//         title: Text('First List Item'),
//         subtitle: Text('Greate Subtitle'),
//         trailing: Icon(Icons.wb_sunny),
//         onTap: () {
//           debugPrint('First Item Clicked');
//         },
//       ),
//       ListTile(
//         leading: Icon(Icons.landscape),
//         title: Text('Second List Item'),
//         subtitle: Text('Second Subtitle'),
//         trailing: Icon(Icons.wb_sunny),
//       ),
//       ListTile(
//         leading: Icon(Icons.landscape),
//         title: Text('Third List Item'),
//         subtitle: Text('Third Subtitle'),
//         trailing: Icon(Icons.wb_sunny),
//       )
//     ],
//   );
//   return listview;
// }
List<String> getListElement() {
  var items = List<String>.generate(100, (counter) => "Item $counter");
  return items;
}

void showSnackBar(BuildContext context, String item) {
  var snack = SnackBar(
    content: Text(item),
    action: SnackBarAction(
      label: "UNDO",
      onPressed: () {
        debugPrint("Dummy UNDO Operation");
      },
    ),
  );
  Scaffold.of(context).showSnackBar(snack);
}

Widget getListView() {
  var listItems = getListElement();
  var listItem = ListView.builder(
    itemBuilder: (context, index) {
      return ListTile(
        leading: Icon(Icons.arrow_right),
        title: Text(listItems[index]),
        onTap: () {
          //debugPrint('${listItems[index]} was clicked');
          showSnackBar(context, '${listItems[index]} was clicked');
        },
      );
    },
  );
  return listItem;
}
