import 'package:covidscreeningapp/style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NewSelectionInput extends StatelessWidget {
  final List<String> options;
  final String heading;
  final String description;
  final Color optionColour;
  final Color headerColour;

  int _selected;
  Function onTap;

  NewSelectionInput(this.options, this.heading, this.description,
      this._selected, this.optionColour, this.headerColour, this.onTap);

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: new SingleChildScrollView(
            child: Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.only(top: 30),
          child: Column(children: [
            // heading
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              child: Text(
                heading,
                textAlign: TextAlign.center,
                style: Navigate19TextStyle.montserratDesc(),
              ),
            ),

            // spacer
            SizedBox(height: 15),

            // question
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              child: Text(
                description,
                textAlign: TextAlign.center,
                style: Navigate19TextStyle.montserratDescGrey(),
              ),
            ),

            // list of options
            ListView.builder(
              shrinkWrap: true,
              itemCount: options.length,
              itemBuilder: (context, i) {
                return Container(
                  // rounded corners, change colour on pressed
                  child: Card(
                    margin: EdgeInsets.only(left: 45, right: 45, top: 10),

                    color: i == _selected ? optionColour : Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(color: Colors.black, width: 3)),

                    // listTile containing text of M/C choice
                    child: ListTile(
                      title: Center(
                          child: Text(
                        options[i],
                        style: GoogleFonts.oswald(
                          textStyle: TextStyle(fontSize: 24),
                        ),
                      )),
                      onTap: onTap(i),
                    ),
                  ),
                );
              },
            )
          ]),
        )),
      ),
    );
  }
}
