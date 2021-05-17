import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_list_project/model/todo_model.dart';
import 'package:my_list_project/theme/bottom_sheet.dart';

void main() {
  runApp(TodoApp());
}

class TodoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Todo List UI',
      theme: ThemeData(primaryColor: Color(0xFF1C222E)),
      home: MyTodoList(),
    );
  }
}

class MyTodoList extends StatefulWidget {
  const MyTodoList({Key key}) : super(key: key);

  @override
  _MyTodoListState createState() => _MyTodoListState();
}

class _MyTodoListState extends State<MyTodoList> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: this._scaffoldKey,
      backgroundColor: Color(0xFF1C222E),
      appBar: AppBar(
        backgroundColor: Color(0xFF1C222E),
        leading: Icon(Icons.menu),
        title: Text('My todos', style: GoogleFonts.poppins()),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {},
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () => showModalBottomSheet(
              context: context,
              builder: (ctx) => buildBottomSheet2(ctx)),
        backgroundColor: Color(0xFF1C222E),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10.0))
      ),
        child: Icon(Icons.add),
      ),
      body: ListView(
        children: [

          Padding(
            padding: const EdgeInsets.only(left: 16.0, top: 16.0),
            child: Text('Welcome back, Beandroid',
                style: GoogleFonts.poppins(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w400,
                    color: Colors.white)),
          ),
          SizedBox(height: 16.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Image.network(
              'https://quotefancy.com/media/wallpaper/3840x2160/31982-Carol-Burnett-Quote-Only-I-can-change-my-life-No-one-can-do-it-for.jpg',
              // cache: true, (by default caches image)
              // shape: BoxShape.rectangle,
              // borderRadius: const BorderRadius.all(Radius.circular(30.0)),
            ),
          ),
          SizedBox(height: 16.0),
          Card(
            margin: EdgeInsets.symmetric(horizontal: 1.5),
            color: Colors.white,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0))),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyContainer(myText: 'ongoing', colorBox: Colors.green),

                  MyListTile(title: 'Pay rent' ),
                  MyListTile(title: 'Go to the mall'),
                  MyListTile(title: 'Read a book'),
                  MyListTile(title: 'New flutter app'),
                  MyListTile(title: 'Visit my blog'),

                  MyContainer(myText: 'completed', colorBox: Colors.grey),

                  MyListTile(title: 'Lab Assessment'),
                  MyListTile(title: 'Paint-balling'),
                  MyListTile(title: 'Cook for the kids'),
                  MyListTile(title: 'Run errands'),
                  MyListTile(title: 'Pick up Josh and Hafis'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
