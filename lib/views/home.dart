import 'package:flutter/material.dart';
import '../drawer/drawer.dart';
import '../drawer/buttons/user.dart';
import '../drawer/buttons/search.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    var dataShow = 0;
    return Scaffold(
      drawer: Drawer(
        child: DrawerW(),
      ),
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text('FlutterApp', style: TextStyle(color: Colors.white)),
        actions: <Widget>[
          UserButtonNav(),
          SearchButtonNav(),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                'Hola Flutter! $dataShow',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              ),
            ),
            InkWell(
              child: Container(
                height: 150.0,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 25,
                  itemBuilder: (context,position){
                    return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 2.0),
                        child: Container(
                          width: 150.0,
                          height: 150.0,
                          color: Colors.lightBlueAccent,
                          child: Center(
                            child: Text('Posición $position'),

                          ),

                        ));
                  },
                ),
              ),
              onTap: (){
                dataShow = dataShow + 1;
              },
            ),
            DefaultTabController(
              length: 3,
              child: TabBar(
                unselectedLabelColor: Colors.grey,
                tabs: <Widget>[
                  Tab(text: "Indicadores",),
                  Tab(text: "Usuarios"),
                  Tab(text: "Pruebas")
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
