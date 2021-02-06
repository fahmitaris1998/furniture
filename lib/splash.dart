import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: Stack(
        children: [
          Column(
            children: [
              Flexible(
                  flex: 3,
                  child:
                  Container(
                    height: 699.0,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: ExactAssetImage("assets/image/image1.png"),
                            fit: BoxFit.fill
                        )
                    ),
                  )
              ),
              Flexible(
                  flex: 2,
                  child:
                  Container(
                    decoration: BoxDecoration(
                        gradient: new LinearGradient(
                            colors: [
                              Color.fromRGBO(234,233,231, 1),
                              Color.fromRGBO(255,255,255, 1),
                            ],
                            stops: [0.0, 1.0],
                            begin: FractionalOffset.topCenter,
                            end: FractionalOffset.bottomCenter,
                            tileMode: TileMode.repeated
                        )

                    ),
                  )
              )
            ],
          ),
          Positioned(
            child:Column(
              children: [
                Flexible(
                    flex: 8,
                    child:
                    Container(
                      color: Colors.transparent,
                    )
                ),
                Flexible(
                    flex: 7,
                    child:
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.transparent
                      ),
                      child:
                      Container(
                        margin: EdgeInsets.only(bottom: 11.0),
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(horizontal: 42.0),
                        child: Column(
                          children: [
                            Text("Modern Geometric Furnitures",style: TextStyle(fontSize: 47.0,fontFamily: 'Poppins',height: 1.1),),
                            SizedBox(height: 10.0,),
                            Text("Welcome to Geometric home decoration product app. Let’s Decorate your home with modern geometcic products.",style: TextStyle(fontSize: 15.0,fontFamily: 'Poppinsnormal',color: Color.fromRGBO(122, 117, 139, 1),fontWeight: FontWeight.w400),),
                            Expanded(child: SizedBox()),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 1.0),

                              width: double.infinity,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50.0),
                                  color: Color.fromRGBO(	238, 101, 84, 1)
                              ),
                              child: Stack(
                                children: [
                                  Positioned.fill(
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Container(
                                        width:double.infinity,
                                        child: Text("Get Started",textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontFamily: 'Poppinsnormal',fontSize: 16.0,fontWeight: FontWeight.w400),),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.symmetric(vertical: 17.0,horizontal: 17.0),
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        gradient: new LinearGradient(
                                            colors: [
                                              Color.fromRGBO(252,121,105, 1),
                                              Color.fromRGBO(243,138,125, 1),
                                            ],
                                            stops: [0.0, 0.0],
                                            begin: FractionalOffset.centerRight,
                                            end: FractionalOffset.centerLeft,
                                            tileMode: TileMode.repeated
                                        )
                                    ),
                                    child: Icon(Icons.arrow_forward,color: Colors.white,),
                                  )

                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

