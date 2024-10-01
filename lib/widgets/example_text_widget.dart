import 'package:dalyveryfood/utils/colors.dart';
import 'package:dalyveryfood/widgets/small_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/dimension.dart';


class ExampleText extends StatefulWidget {
  final String text;

  const ExampleText({super.key, required this.text});

  @override
  State<ExampleText> createState() => _ExampleTextState();
}

class _ExampleTextState extends State<ExampleText> {
  late String firstHaft;
  late String secondHaft;

  bool hiddenText=true;
  double textHeight = Dimensions.screenHeight/5.63;
  
  
  @override
  void initState(){
    super.initState();
    if(widget.text.length>textHeight){
      firstHaft = widget.text.substring(0, textHeight.toInt());
      secondHaft = widget.text.substring(textHeight.toInt()+1, widget.text.length);

    }else{
      firstHaft=widget.text;
      secondHaft="";
      
    }
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: secondHaft.isEmpty?SmallText(size:Dimensions.font16,text: firstHaft):Column(
        children: [
          SmallText(height:1.8,color:AppColors.paraColor,size:Dimensions.font16,text:hiddenText?(firstHaft+"..."):(firstHaft+secondHaft)),
          InkWell(
            onTap: (){
              hiddenText=!hiddenText;
            },
            child: Row(
              children: [
                SmallText(text: "Xem thêm", color: AppColors.mainColor,),
                Icon(hiddenText?Icons.arrow_drop_down:Icons.arrow_drop_up, color: AppColors.mainColor,)
              ],
            ),
          )
        ],
      ),
    );
    
  }
}
