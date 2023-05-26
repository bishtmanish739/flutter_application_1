import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen1.dart/page1.dart';
import 'package:flutter_application_1/screen1.dart/page2.dart';
import 'package:flutter_application_1/screen1.dart/searchBarPage2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void handleClick(String value) {
    switch (value) {
      case 'Logout':
        break;
      case 'Settings':
        break;
    }
}
int _selectedIndex=1;
void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
   static const List<Widget> _widgetOptions = <Widget>[  
    SignUp(),
    SearchScreen(),  
    Text('Profile Page', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),  
  ];  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: PreferredSize(
        preferredSize:_selectedIndex==1||_selectedIndex==2? const Size.fromHeight(120.0):const Size.fromHeight(80),
        child: _selectedIndex==0 ?  AppBar(
          title: const Center(
            
            child: Text('Sign In'),
          ),

          backgroundColor:const Color.fromARGB(255, 87, 138, 28),
          actions: <Widget>[
          PopupMenuButton<String>(
            onSelected: handleClick,
            itemBuilder: (BuildContext context) {
              return {'Logout', 'Settings'}.map((String choice) {
                return PopupMenuItem<String>(
                  value: choice,
                  child: Text(choice),
                );
              }).toList();
            },
          ),
        ],
        ):SearchBarPage2()
        
        
      ),
      body: _widgetOptions[_selectedIndex],
      
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: ''
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search_off_rounded),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_add),
            label: '',
          ),
        ],
        currentIndex:_selectedIndex,
        selectedItemColor: Colors.amber[800],
         onTap: _onItemTapped,
      ),
      )
    );
  }
}
