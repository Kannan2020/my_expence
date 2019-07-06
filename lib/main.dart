import 'package:flutter/material.dart';

void main() => {
      runApp(MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Money Flow Management',
          home: MyFavoriteCity()))
    };

class MyFavoriteCity extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyFavoriteCityState();
  }
}

class _MyFavoriteCityState extends State<MyFavoriteCity> {
  var cityName = '';
  var _currencies = ["Rupees", "Dollar", "Pounds", "Others"];
  var selectedCurrency = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful App Example'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(30.0),
              child: TextField(
                onChanged: (String userinput) {
                  debugPrint("Function Called");
                  setState(() {
                    cityName = userinput;
                  });
                },
              ),
            ),
            DropdownButton<String>(
              items: _currencies.map((String dropdownStringItem) {
                return DropdownMenuItem<String>(
                  value: dropdownStringItem,
                  child: Text(dropdownStringItem),
                );
              }).toList(),
              onChanged: (String selectedItem) {
                updateSelectedItem(selectedItem);
              },
            ),
            Padding(
              padding: EdgeInsets.all(30.0),
              child: Text(
                "Your best city is $cityName",
                style: TextStyle(fontSize: 20.0),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(30.0),
              child: Text(
                "Selected Currency $selectedCurrency",
                style: TextStyle(fontSize: 20.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
  void updateSelectedItem (String selectedItem)
  {
    setState(() {
                  this.selectedCurrency = selectedItem;
                });
  }
}
