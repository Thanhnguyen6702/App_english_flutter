import 'package:flutter/material.dart';

class ButtonText extends StatefulWidget {
  const ButtonText({super.key, required this.onTapButton, required this.text});

  final Function onTapButton;
  final String text;

  @override
  State<ButtonText> createState() => _ButtonTextState();
}

class _ButtonTextState extends State<ButtonText> {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: ElevatedButton(
        onPressed: (){
          widget.onTapButton();
        },
        child: Text(widget.text),
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6)
            )
          ),
          foregroundColor: MaterialStateProperty.resolveWith<Color>((Set<MaterialState> state){
            if(state.contains(MaterialState.pressed)){
              return Colors.grey;
            }
            else {
              return Colors.black;
            }
          }),
        ) ,
      ),
    );
  }
}
