import 'package:book/widgets/screens/dom.dart';
import 'package:flutter/material.dart';
class Gesture extends StatelessWidget {
  const Gesture({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return  Pega();
        },),);
      },
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 16),
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 30),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                  offset: Offset(0, 15),
                  blurRadius: 30,
                  color: Color(0xFF666666).withOpacity(.11)
              ),
            ]
        ),
        child: Text("Statr reading (:", style: TextStyle(fontSize: 16,
            fontWeight: FontWeight.bold),),
      ),
    );
  }
}