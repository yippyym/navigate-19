import 'package:covidscreeningapp/style.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SelectionInput extends StatefulWidget {
  final List<String> options;
  final String heading;
  final String description;
  final Color optionColour;
  final Color headerColour;
  final int selected;
  final Function onTap;

  const SelectionInput(
      {required this.options,
      required this.heading,
      required this.description,
      required this.selected,
      required this.optionColour,
      required this.headerColour,
      required this.onTap});

  @override
  State<SelectionInput> createState() => _SelectionInputState(
        options: options,
        heading: heading,
        description: description,
        selected: selected,
        optionColour: optionColour,
        headerColour: headerColour,
        onTap: onTap,
      );
}

class _SelectionInputState extends State<SelectionInput> {
  final List<String> options;
  final String heading;
  final String description;
  final Color optionColour;
  final Color headerColour;
  final int selected;
  final Function onTap;

  _SelectionInputState({
    required this.options,
    this.heading = '',
    this.description = '',
    this.selected = 0,
    this.optionColour = Colors.blue,
    this.headerColour = Colors.white,
    required this.onTap,
  });

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
                // for each M/C option, returns a ListTile
                return Container(
                  // rounded corners, change colour on pressed
                  child: Card(
                    margin: EdgeInsets.only(left: 45, right: 45, top: 10),

                    color: i == selected ? optionColour : Colors.white,
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
