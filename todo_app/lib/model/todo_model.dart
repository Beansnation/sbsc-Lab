import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyListTile extends StatefulWidget {
  String title;
  Color iconColor;
  MyListTile({this.title, this.iconColor});
  // final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  _MyListTileState createState() => _MyListTileState();
}

class _MyListTileState extends State<MyListTile> {
  
  @override
  Widget build(BuildContext context) {
    bool check = false;
    return ListTile(
      onTap: () => showModalBottomSheet(
          context: context,
          builder: (ctx) => _buildBottomSheet(ctx)), //check line 48
      leading: Checkbox(onChanged: (value){ 
        check = true;
       },
      value : check),
      title: Text(widget.title,
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w500,
            fontSize: 16,
          )),
      trailing: Text('Wed 12th',
          style: GoogleFonts.poppins(fontWeight: FontWeight.bold)),
    );
  }
}


//modal bottom sheet function
Card _buildBottomSheet(BuildContext context) {
  final _controller = TextEditingController();
  return Card(
      color: Colors.white,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0),
              topRight: Radius.circular(30.0))),
      child: ListView(children: <Widget>[
        Container(
          padding: EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment:MainAxisAlignment.end,
                children:[
                  IconButton(
                    icon: Icon(Icons.cancel),
                    onPressed:()=> Navigator.pop(context),
                  )
                ]
              ),
              Row(
                //for the go to the mall
                children: [
                  Container(
                    height: 60.0,
                    width: 8.0,
                    color: Colors.red,
                  ),
                  SizedBox(width: 8.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Go to the Mall',
                        style: GoogleFonts.poppins(
                            fontSize: 24.0, fontWeight: FontWeight.w600),
                      ),
                      Row(
                        children: [
                          Text(
                            'Date: ',
                            style: GoogleFonts.poppins(
                              fontSize: 16.0,
                              color: Colors.green,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            'Wed 12th',
                            style: GoogleFonts.poppins(
                              fontSize: 16.0,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ), //go to the mall ends here
              Padding(
                padding:
                const EdgeInsets.only(left: 16.0, top: 28.0, bottom: 4.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Description: ',
                      style: GoogleFonts.poppins(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500,
                          color: Colors.green),
                    ),
                    Text(
                      'to be completed',
                      style: GoogleFonts.poppins(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w500,
                          color: Colors.red),
                    ),
                  ],
                ),
              ),
              TextField(
                maxLines: 10,
                textCapitalization: TextCapitalization.sentences,
                decoration: InputDecoration(
                    labelText: 'Enter multiline text:',
                    hintText: 'type something...',
                    border: const OutlineInputBorder()),
                onChanged: (text) => setState(() {}),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 295.0,
                      height: 60.0,
                      child: ElevatedButton(
                          onPressed: ()=> Navigator.pop(context),
                          style: ElevatedButton.styleFrom(primary: Color(0xFF1C222E)),
                          child: Text('SAVE')),
                    ),
                    SizedBox(
                        width: 60.0,
                        height: 60.0,
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(side:BorderSide( color: Color(0xFF1C222E), width: 1)) ,
                          onPressed:()=> Navigator.pop(context),
                          child: Icon(Icons.edit, color: Color(0xFF1C222E),
                          ),
                        )
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ]));
}

setState(Null Function() param0) {}

// a constructor containing the todos
// ignore: must_be_immutable
class MyContainer extends StatelessWidget {
  String myText;
  Color colorText;
  Color colorBox;

  MyContainer({this.myText, this.colorText, this.colorBox});
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 15.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: colorBox,
        ),
        child: Text(
          myText,
          style: GoogleFonts.poppins(
              color: Colors.white, fontSize: 12.0, fontWeight: FontWeight.w800),
        ));
  }
}

// ignore: must_be_immutable
