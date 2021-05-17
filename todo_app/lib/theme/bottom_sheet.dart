import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Container buildBottomSheet2 (BuildContext context) {
  final _controller = TextEditingController();
  return Container(
    height : 2500,
    color: Colors.white,
    child: ListView(
      padding: EdgeInsets.all(8.0),
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('create todo', style: GoogleFonts.poppins(
              fontSize: 12.0,
              fontWeight: FontWeight.w500
            ),),
            IconButton(
              icon: Icon(Icons.cancel),
              onPressed: ()=> Navigator.pop(context),
            )
          ],
        ),
        SizedBox(height: 12.0),
        Text('Add a title',
          style: GoogleFonts.poppins(
              fontSize: 20.0,
              fontWeight: FontWeight.w600
          ),),
        TextField(
          decoration: InputDecoration(
            labelText: 'title',
            labelStyle: GoogleFonts.poppins(
              fontSize: 20.0,
              fontWeight: FontWeight.w600
            )
          ),
        ),
        SizedBox(height: 16.0),
        Text('Pick a deadline',
        style: GoogleFonts.poppins(
          fontSize: 20.0,
          fontWeight: FontWeight.w600
        ),),
        TextField(
          decoration: InputDecoration(
             
              labelStyle: GoogleFonts.poppins(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600
              )
          ),
        ),
        SizedBox(height: 16.0),
        Text('Add a description',
          style: GoogleFonts.poppins(
              fontSize: 20.0,
              fontWeight: FontWeight.w600
          ),),
        TextField(
          maxLines: 3,
          textCapitalization: TextCapitalization.sentences,
          decoration: InputDecoration(
              
              hintText: 'type something...',
              border: const OutlineInputBorder()),
          onChanged: (text) {},
        ),
        SizedBox(height: 16.0),
        Center(
          child: SizedBox(
            width: 295.0,
            height: 60.0,
            child: ElevatedButton(
                onPressed: ()=> Navigator.pop(context),
                style: ElevatedButton.styleFrom(primary: Color(0xFF1C222E)),
                child: Text('FINISH')),
          ),
        ),
      ],
    ),
  );
}

// setState(Null Function() param0) {
// }

