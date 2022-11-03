import 'package:flutter/material.dart';
import 'package:babylonjs_viewer/babylonjs_viewer.dart';
class Categories extends StatefulWidget {
  const Categories({Key key}) : super(key: key);

  @override
  State<Categories> createState() => _Categories();
}

class _Categories extends State<Categories> {

  final PageStorageBucket _bucket = PageStorageBucket();
  final List<PageItem> _items = [
    PageItem('Gerakan 1', Icons.looks_one_outlined, FavoriteScreen(key: PageStorageKey('key--favorite'))),
    PageItem('Gerakan 2', Icons.looks_two_outlined,Gerakan2()),
    PageItem('Gerakan 3', Icons.looks_3_outlined, Gerakan3()),
    PageItem('Gerakan 4', Icons.looks_4_outlined, Gerakan4()),
    PageItem('Gerakan 5', Icons.looks_5_outlined, Gerakan5()),
  ];

  int _activeScreenIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: SizedBox(width: 230,child: Text(_items[_activeScreenIndex].title,textAlign: TextAlign.center,
        ),),
      ),
      body: PageStorage(
          child: _items[_activeScreenIndex].screen,
          bucket: _bucket),

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _activeScreenIndex,
        onTap: (index) {
          setState(() {
            _activeScreenIndex = index;
          });
        },
        items: _items.map((item) {
          return BottomNavigationBarItem(
            label: ("Gerakan"),
            icon: Icon(item.icon,size: 50,),
          );
        }).toList(),
      ),

    );
  }
}

class PageItem {
  final String title;
  final IconData icon;
  final Widget screen;

  PageItem(this.title, this.icon, this.screen);
}

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({Key key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        floatingActionButton: ListTile(trailing: Icon(Icons.info_outline,
            color: Colors.yellowAccent.withOpacity(0.5), size: 50),
          onTap: () => showDialogWidget(context),),
        floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
        body: BabylonJSViewer(
          src: 'assets/jangkrena.glb',
        ),
      ),
    );
  }

  Future showDialogWidget(BuildContext context) {
    return showDialog(

        context: context,
        builder: (newContext) {
          return AlertDialog(
            // when i did print("sth") it printed
            title: Text("Gerakan Jangkrena",
              style: TextStyle(color: Colors.white),
              textAlign: TextAlign.center,),
            content: Text(
              "Gerakan ini memiliki makna untuk mengapresiasi dan menghargai tamu.",
              style: TextStyle(color: Colors.white),
              textAlign: TextAlign.center,),
            actions: [
              TextButton(onPressed: () {
                Navigator.of(context).pop(true);
              }, child: Text("Tutup")),
            ],
            elevation: 24.0,
            backgroundColor: Color(0x37f1f1f1),

            shape: Border(top: BorderSide(
                width: 4, style: BorderStyle.solid, color: Colors.yellow),
                bottom: BorderSide(
                    width: 4, style: BorderStyle.solid, color: Colors.yellow)),
          );
        });
  }
}


class Gerakan2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        floatingActionButton: ListTile(trailing: Icon(Icons.info_outline,
            color: Colors.yellowAccent.withOpacity(0.5), size: 50),
          onTap: () => showDialogWidget(context),),
        floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
        body: BabylonJSViewer(
          src: 'assets/menjong_gedang.glb',
        ),
      ),
    );
  }

  Future showDialogWidget(BuildContext context) {
    return showDialog(
        context: context,
        builder: (newContext) {
          return AlertDialog(
            // when i did print("sth") it printed
            title: Text("Gerakan Menjong Gedang",
              style: TextStyle(color: Colors.white),
              textAlign: TextAlign.center,),
            content: Text(
              "Gerakan ini memiliki makna sebagai langkah kebaikan.",
              style: TextStyle(color: Colors.white),
              textAlign: TextAlign.center,),
            actions: [
              TextButton(onPressed: () {
                Navigator.of(context).pop(true);
              }, child: Text("Tutup")),
            ],
            elevation: 24.0,
            backgroundColor: Color(0x37f1f1f1),

            shape: Border(top: BorderSide(
                width: 4, style: BorderStyle.solid, color: Colors.yellow),
                bottom: BorderSide(
                    width: 4, style: BorderStyle.solid, color: Colors.yellow)),
          );
        });
  }
}



class Gerakan3 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        floatingActionButton: ListTile(trailing: Icon(Icons.info_outline,
            color: Colors.yellowAccent.withOpacity(0.5), size: 50),
          onTap: () => showDialogWidget(context),),
        floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
        body: BabylonJSViewer(
          src: 'assets/sembahkejoi.glb',
        ),
      ),
    );
  }

  Future showDialogWidget(BuildContext context) {
    return showDialog(
        context: context,
        builder: (newContext) {
          return AlertDialog(
            // when i did print("sth") it printed
            title: Text("Gerakan Sembah kejei",
              style: TextStyle(color: Colors.white),
              textAlign: TextAlign.center,),
            content: Text(
              "Gerakan ini memiliki makna penghormatan kepada para leluhur.",
              style: TextStyle(color: Colors.white),
              textAlign: TextAlign.center,),
            actions: [
              TextButton(onPressed: () {
                Navigator.of(context).pop(true);
              }, child: Text("Tutup")),
            ],
            elevation: 24.0,
            backgroundColor: Color(0x37f1f1f1),

            shape: Border(top: BorderSide(
                width: 4, style: BorderStyle.solid, color: Colors.yellow),
                bottom: BorderSide(
                    width: 4, style: BorderStyle.solid, color: Colors.yellow)),
          );
        });
  }
}



class Gerakan4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        floatingActionButton: ListTile(trailing: Icon(Icons.info_outline,
            color: Colors.yellowAccent.withOpacity(0.5), size: 50),
          onTap: () => showDialogWidget(context),),
        floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
        body: BabylonJSViewer(
          src: 'assets/andun.glb',
        ),
      ),
    );
  }

  Future showDialogWidget(BuildContext context) {
    return showDialog(
        context: context,
        builder: (newContext) {
          return AlertDialog(
            // when i did print("sth") it printed
            title: Text("Gerakan Andun",
              style: TextStyle(color: Colors.white),
              textAlign: TextAlign.center,),
            content: Text(
              "Gerakan ini memiliki makna patuh dan taat.",
              style: TextStyle(color: Colors.white),
              textAlign: TextAlign.center,),
            actions: [
              TextButton(onPressed: () {
                Navigator.of(context).pop(true);
              }, child: Text("Tutup")),
            ],
            elevation: 24.0,
            backgroundColor: Color(0x37f1f1f1),

            shape: Border(top: BorderSide(
                width: 4, style: BorderStyle.solid, color: Colors.yellow),
                bottom: BorderSide(
                    width: 4, style: BorderStyle.solid, color: Colors.yellow)),
          );
        });
  }
}




class Gerakan5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        floatingActionButton: ListTile(trailing: Icon(Icons.info_outline,
            color: Colors.yellowAccent.withOpacity(0.5), size: 50),
          onTap: () => showDialogWidget(context),),
        floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
        body: BabylonJSViewer(
          src: 'assets/sembah.glb',
        ),
      ),
    );
  }

  Future showDialogWidget(BuildContext context) {
    return showDialog(
        context: context,
        builder: (newContext) {
          return AlertDialog(
            // when i did print("sth") it printed
            title: Text("Gerakan Sembah",
              style: TextStyle(color: Colors.white),
              textAlign: TextAlign.center,),
            content: Text(
              "Gerakan ini memimliki makna penghormatan yang tinggi pada tamu.",
              style: TextStyle(color: Colors.white),
              textAlign: TextAlign.center,),
            actions: [
              TextButton(onPressed: () {
                Navigator.of(context).pop(true);
              }, child: Text("Tutup")),
            ],
            elevation: 24.0,
            backgroundColor: Color(0x37f1f1f1),

            shape: Border(top: BorderSide(
                width: 4, style: BorderStyle.solid, color: Colors.yellow),
                bottom: BorderSide(
                    width: 4, style: BorderStyle.solid, color: Colors.yellow)),
          );
        });
  }
}