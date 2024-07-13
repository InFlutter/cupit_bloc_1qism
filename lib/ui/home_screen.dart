import 'package:cupit/ui/counter_screen.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 15,),
                  Container(
                      child: const Text('Settings')),
                  SizedBox(height: 10,),
                  Container(
                    height: 1.5,
                    width: double.infinity,
                    color: Colors.black,
                  )
                ],
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context,MaterialPageRoute(builder: (ctx){
                  return Settings();
                },
                ),
                );
              },
            ),


          ],
        ),
      ),
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: Center(
        child: Text('Home page'),
      ),
    );
  }
}
