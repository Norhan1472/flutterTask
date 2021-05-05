import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'ButtomAppBar with FAB'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  static const TextStyle style =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold,color:Colors.white);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'TAB : 0',
      style: style,
    ),
    Text(
      'TAB : 1',
       style: style,
          ),
    Text(
      'TAB : 2', 
      style: style,
    ),
    
    Text(
      'TAB : 2',
      style: style,
      ),
      Text(
      'TAB : 3',
      style: style,
      ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
        title: const Text('BottomNavigationBar Sample'),
      ),
      
      floatingActionButton:FloatingActionButton(
        
        onPressed: () {
          // Add your onPressed code here!
        },
        child: const Icon(Icons.add),
        backgroundColor: Colors.blue,
        
      ),
      floatingActionButtonLocation: 
          FloatingActionButtonLocation.centerDocked,
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.menu,color: Colors.white,),
            label: 'This',
            backgroundColor: Colors.teal,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.layers_sharp,color: Colors.white,),
            label: 'Is',
            backgroundColor: Colors.lightBlue,

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add,color: Colors.white10,),
            label: 'A',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard_sharp,color: Colors.white,),
            label: 'Buttom',
            backgroundColor: Colors.blue,

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info,color: Colors.white,),
            label: 'Bar',
            backgroundColor: Colors.indigo,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor:Colors.white,
        showUnselectedLabels: true,
        onTap: _onItemTapped,
      ),
    );
  }
}
