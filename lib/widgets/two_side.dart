import 'package:book/consttants.datr.dart';
import 'package:book/widgets/screens/details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TwoSide extends StatelessWidget {
  final String text;
  final double radious;
  const TwoSide({
    super.key,
     required this.text, 
      this.radious =30,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return Detals();
          },),);
        },
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(vertical: 10),
          decoration: BoxDecoration(
            color: kBlackColor,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(radious),
              bottomRight: Radius.circular(radious),
            )
          ),
          child: Text(text,
            style: TextStyle(color: Colors.white),),
        ),
      ),
    );
  }
}
