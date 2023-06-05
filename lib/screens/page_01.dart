
import 'package:assignment05/screens/page_02.dart';
import 'package:assignment05/screens/page_03.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget{
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin{

  @override

  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Page 01"),
          backgroundColor: Colors.green,
          centerTitle: true,
          bottom: const TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.home_filled),
                text: "Home",
              ),
              Tab(
                icon: Icon(Icons.contact_mail),
                text: "Contact",
              ),
              Tab(
                icon: Icon(Icons.person),
                text: "Profile",
              ),
            ],
          ),
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              const DrawerHeader(child: Text("Drawer Header")),
              ListTile(
                leading: Icon(Icons.home),
                title: Text("Page 01"),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                },
              ),
              ListTile(
                leading: Icon(Icons.contact_mail),
                title: Text("Page 02"),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ContactScreen()));
                },
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text("Page 03"),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileScreen()));
                },
              ),

            ],
          ),
        ),
        body: const TabBarView(children: [
          Center(
            child: Text("Page 01", style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600, color: Colors.green),),
          ),
          Center(
            child: Text("Page 02", style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600, color: Colors.blue),),
          ),
          Center(
            child: Text("Page 03", style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600, color: Colors.orange),),
          ),
        ]),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          backgroundColor: Colors.green,
          onPressed: () {  },
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Page01", ),
            BottomNavigationBarItem(icon: Icon(Icons.contact_mail), label: "Page02", ),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Page03", ),
          ],
          onTap: (int index){
            if(index == 0){
              Navigator.push(context,  MaterialPageRoute(builder: (context) => HomeScreen()));
            }
            if(index == 1){
              Navigator.push(context,  MaterialPageRoute(builder: (context) => ContactScreen()));
            }
            if(index == 2){
              Navigator.push(context,  MaterialPageRoute(builder: (context) => ProfileScreen()));
            }
          },
        ),
      ),

    );
  }
}