
import 'package:dalyveryfood/utils/colors.dart';
import 'package:dalyveryfood/widgets/big_text.dart';
import 'package:dalyveryfood/widgets/iconandtext.dart';
import 'package:dalyveryfood/widgets/small_text.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

import '../utils/dimension.dart';

class FoodHomebody extends StatefulWidget {
  const FoodHomebody({super.key});

  @override
  State<FoodHomebody> createState() => _FoodHomebodyState();
}

class _FoodHomebodyState extends State<FoodHomebody> {
  PageController pageController = PageController(viewportFraction: 0.85);
  var _currPageValue=0.0;
  double _scaleFactor=0.95;
  double _height=Demensions.pageViewContainer;


  @override
  void initState(){
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currPageValue = pageController.page!;
      });
    });
  }@override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          //color: Colors.redAccent,
          height: Demensions.screenView,
          child: PageView.builder(
              controller: pageController,
              itemCount: 7,
              itemBuilder: (context, position){
                return _buildPageItem(position);
              }),

        ),
    new DotsIndicator(
    dotsCount: 7,
    position: _currPageValue.round(),
    decorator: DotsDecorator(

    size: const Size.square(9.0),
    activeSize: const Size(18.0, 9.0),
    activeColor: AppColors.mainColor,
    activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
    ),
    ),
      ],
    );
  }
  Widget _buildPageItem(int index){
    Matrix4 matrix= new Matrix4.identity();
    /*if(index==_currPageValue.floor()){
      var currScale=1-(_currPageValue-index)*(1-_scaleFactor);
      var currtrans=_height*(1-currScale)/2;
      matrix=Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, currtrans, 0);

    }else {
      var currScale=_scaleFactor+(_currPageValue-index+1)*(1-_scaleFactor);
      var currtrans=_height*(1-currScale)/2;
      //matrix=Matrix4.diagonal3Values(1, currScale, 1);
      matrix=Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, currtrans, 0);
    }*/
    if (index == _currPageValue.floor()) {
      var currScale = 1 - (_currPageValue - index) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, currTrans, 0);
    } else if (index == _currPageValue.floor() + 1) {
      var currScale = _scaleFactor + (_currPageValue - index + 1) * (1 - _scaleFactor);
      var currTrans = _height * (1 - currScale) / 2;
      matrix=Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, currTrans, 0);
    } else if(index==_currPageValue.floor()-1) {
      var currScale=1-(_currPageValue-index)*(1-_scaleFactor);
      // var currScale = _scaleFactor;
      var currTrans = _height * (1 - currScale) / 2;
      matrix=Matrix4.diagonal3Values(1, currScale, 1);
      matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, currTrans, 0);
    }else{
      var currScale=0.8;
      matrix = Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, _height*(1-_scaleFactor)/2, 0);
    }


    return Transform(
      transform: matrix,
      child: Stack(
        children: [
          Container(
            height: Demensions.pageViewContainer,
            margin: EdgeInsets.only(left: Demensions.width10, right: Demensions.width10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Demensions.radius30),
                color: index.isEven?Color(0xFF69c5df)  :Color(0xFF9294cc),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/foodsrr.png")
                )
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: Demensions.pageViewTextContainer,
              margin: EdgeInsets.only(left: Demensions.width30, right: Demensions.width30, bottom: Demensions.height30),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Demensions.radius30),
                  color: Colors.white,
                boxShadow:[
                  BoxShadow(
                    color: Color(0xFFe8e8e8),
                    blurRadius: 5.0,
                    offset: Offset(5, 0),

                  ),
                  BoxShadow(
                    color: Colors.white24,
                    offset: Offset(-5,0)
                  ),
            BoxShadow(
                color: Colors.white54,
                offset: Offset(-5,0)
            ),
                ]
      
              ),
      
              child: Container(
                padding: EdgeInsets.only(top: 15, left: 15, right: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    BigText(text: " Bún bò Huế "),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Wrap(
                            children: List.generate(5, (index){ return  Icon(Icons.star, color: AppColors.mainColor, size: 20);})
                        ),
      
                        SizedBox(width: 10,),
                        SmallText(text: "5", color: Colors.grey),
                        SizedBox(width: 10, ),
                        SmallText(text: "1000",color: Colors.grey),
                        SizedBox(width: 10,),
                        SmallText(text: "comment", color: Colors.grey)
                        
                      ],
                    ),
                    SizedBox(width: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconAndText(icon: Icons.circle_sharp,
                            text: "Normal",

      
                            iconColor: AppColors.iconColor1),
                        IconAndText(icon: Icons.location_pin,
                            text: " 1.5 km",
                            iconColor: AppColors.mainColor),
                        IconAndText(icon: Icons.access_time_sharp,
                            text: " 32 min",
                            iconColor: AppColors.iconColor2),
      
                      ],
                    )
      
                  ],
                ),
              ),

            ),
          )
        ],
      ),
    );
  }
}
