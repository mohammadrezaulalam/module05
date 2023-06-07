import 'package:assignment05/screens/page_01.dart';
import 'package:assignment05/screens/page_03.dart';
import 'package:flutter/material.dart';

class ContactScreen extends StatelessWidget{
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Page 02"),
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
                leading: const Icon(Icons.home),
                title: const Text("Page 01"),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen()));
                },
              ),
              ListTile(
                leading: const Icon(Icons.contact_mail),
                title: const Text("Page 02"),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const ContactScreen()));
                },
              ),
              ListTile(
                leading: const Icon(Icons.person),
                title: const Text("Page 03"),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const ProfileScreen()));
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

          backgroundColor: Colors.blue,
          onPressed: () {  },
          child: const Icon(Icons.add),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 1,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Page01", ),
            BottomNavigationBarItem(icon: Icon(Icons.contact_mail), label: "Page02", ),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Page03", ),
          ],
          onTap: (int index){
            if(index == 0){
              Navigator.push(context,  MaterialPageRoute(builder: (context) => const HomeScreen()));
            }
            if(index == 1){
              Navigator.push(context,  MaterialPageRoute(builder: (context) => const ContactScreen()));
            }
            if(index == 2){
              Navigator.push(context,  MaterialPageRoute(builder: (context) => const ProfileScreen()));
            }
          },
        ),
      ),

    );
  }

}