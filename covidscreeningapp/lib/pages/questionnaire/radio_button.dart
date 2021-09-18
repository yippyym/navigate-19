import 'package:flutter/material.dart';

/*
Example of OnChanged function:

  void onChanged(String current) {
    setState(() {
      selectedValue = current;
    });
  }
*/

class RadioButton extends StatelessWidget {
  final Color activeColour;
  final String header;
  final List<String> titles;
  final double headerSize;
  final double selectedSize;
  final bool centeredButtons;
  final double buttonSpacing;

  final Function onChanged;
  final String selectedval;

  RadioButton(
      this.activeColour,
      this.header,
      this.titles,
      this.onChanged,
      this.selectedval,
      this.headerSize,
      this.selectedSize,
      this.centeredButtons,
      this.buttonSpacing);

  List<Widget> createRadioButton() {
    List<Widget> buttons = [];
    for (String title in titles) {
      buttons.add(
        RadioListTile(
          value: title,
          groupValue: selectedval,
          title: Text(title,
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: selectedSize,
                  fontWeight: FontWeight.w400)),
          onChanged: (selected) {
            onChanged(selected);
          },
          selected: selectedval == title,
          activeColor: activeColour,
        ),
      );
      buttons.add(SizedBox(height: buttonSpacing));
    }
    return buttons;
  }

  @override
  Widget build(BuildContext context) {
    double marginSize = MediaQuery.of(context).size.height / 12;

    return Container(
        margin: EdgeInsets.all(marginSize),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Text(
            header,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: headerSize,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400),
          ),
          SizedBox(
            height:
                header.isNotEmpty ? MediaQuery.of(context).size.height / 30 : 0,
          ),
          Container(
            padding: centeredButtons
                ? EdgeInsets.only(left: marginSize / 2)
                : EdgeInsets.only(left: 0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: createRadioButton(),
              ),
            ),
          )
        ]));
  }
}
