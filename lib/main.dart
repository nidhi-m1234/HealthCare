import 'package:flutter/material.dart';
import 'package:healthcare/home_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       primarySwatch: Colors.green
      ),
      home: const RootPage(),
    );
  }
}

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
int currentPage=0;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
          title:const  Text('VZHealth Care'),
          centerTitle: true,
          actions: <Widget>[
            IconButton(onPressed: (){}, icon: const Icon(Icons.notifications)),
             IconButton(onPressed: (){}, icon: const Icon(Icons.qr_code)),
              IconButton(onPressed: (){}, icon: const Icon(Icons.share))
          ],
         leading: IconButton(
          onPressed: (){},
          icon: const Icon(Icons.menu),
         ),
      ),

     body: const HomePage(),
      

      bottomNavigationBar: 
    NavigationBar(
      destinations: const[
        NavigationDestination(icon: Icon(Icons.folder_copy), label: 'Records'),
         NavigationDestination(icon: Icon(Icons.link), label: 'Linked Fascility'),
         NavigationDestination(icon: Icon(Icons.copy), label: 'Consents')
      ],
onDestinationSelected: (int index){
  setState(() {
    currentPage=index;
  });
  
},
   selectedIndex : currentPage,

     ),

    );
  }
} 